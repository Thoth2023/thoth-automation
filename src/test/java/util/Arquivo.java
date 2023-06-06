package util;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

public class Arquivo {
    public static String lerTexto(String path) {
        StringBuilder content = new StringBuilder();

        try (BufferedReader file = new BufferedReader(new FileReader(path))) {
            String linha;

            while ((linha = file.readLine()) != null) {
                content.append(linha);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return content.toString();
    }
}
