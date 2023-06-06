package environment;

import org.yaml.snakeyaml.Yaml;

import java.io.FileReader;
import java.io.IOException;
import java.util.Map;

public class Repository {
    private static Map<?, ?> repository;
    private final static String PATH = "files\\repository.yml";

    public static void loadRepository() {
        Yaml yaml = new Yaml();

        try (FileReader reader = new FileReader(PATH)) {
            repository = yaml.load(reader);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * @param page the <b>page.element</b> to search
     * @return the xpath of the page/element requested if it exists
     */
    public static String getXPath(String page) {
        Map<?, ?> map = (Map<?, ?>) repository.get(page.split("\\.")[0]);
        return map.get(page.split("\\.")[1]).toString();
    }
}
