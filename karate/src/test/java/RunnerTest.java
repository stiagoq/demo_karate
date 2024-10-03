import com.intuit.karate.junit5.Karate;

import net.masterthought.cucumber.ReportBuilder;
import org.junit.jupiter.api.AfterAll;

import java.io.File;
import java.util.ArrayList;
import java.util.List;


public class RunnerTest {
    @Karate.Test
    Karate get(){
        return Karate.run("features/Login", "features/Create", "features/Update",
        "features/Delete").relativeTo(getClass());
    }

    @AfterAll
    static void generateReport() {
        File reportOutputDirectory = new File("target/cucumber-reports");
        List<String> jsonFiles = new ArrayList<>();
        jsonFiles.add("target/cucumber.json"); // Asegúrate de que esta ruta sea correcta

        // Generar el reporte
        //ReportBuilder reportBuilder = new ReportBuilder(jsonFiles, reportOutputDirectory);
        //reportBuilder.generateReports();
    }
}
