package com.example.youtube.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import org.json.JSONArray;
import org.json.JSONObject;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/login")
public class LoginController {

    @GetMapping
    public String showLoginForm() {
        return "login"; // login.jsp로 이동
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate(); // 세션 무효화
        return "redirect:/login"; // 로그인 페이지로 이동
    }

    @PostMapping
    public String login(
            @RequestParam String username,
            @RequestParam String password,
            Model model) {
        String apiUrl = "https://679370e65eae7e5c4d8ea954.mockapi.io/clonecoding/users";
        boolean authenticated = false;

        try {
            // MockAPI 호출
            HttpURLConnection connection = (HttpURLConnection) new URL(apiUrl).openConnection();
            connection.setRequestMethod("GET");
            connection.connect();

            // 응답 확인
            int responseCode = connection.getResponseCode();
            if (responseCode != HttpURLConnection.HTTP_OK) {
                model.addAttribute("error", "MockAPI 호출 실패 (응답 코드: " + responseCode + ")");
                return "login";
            }

            // 응답 데이터 읽기
            StringBuilder response;
            try (BufferedReader reader = new BufferedReader(
                    new InputStreamReader(connection.getInputStream(), "UTF-8"))) {
                response = new StringBuilder();
                String line;
                while ((line = reader.readLine()) != null) {
                    response.append(line);
                }
            }

            // JSON 데이터 파싱
            JSONArray users = new JSONArray(response.toString());
            for (Object userObj : users) {
                JSONObject user = (JSONObject) userObj;
                if (user.getString("username").equals(username) &&
                        user.getString("password").equals(password)) {
                    authenticated = true;
                    break;
                }
            }

            if (authenticated) {
                // 로그인 성공 처리
                return "redirect:/videos";
            } else {
                // 로그인 실패 메시지
                model.addAttribute("error", "사용자 이름 또는 비밀번호가 잘못되었습니다.");
                return "login";
            }

        } catch (Exception e) {
            model.addAttribute("error", "로그인 처리 중 오류가 발생했습니다: " + e.getMessage());
            return "login";
        }
    }
}