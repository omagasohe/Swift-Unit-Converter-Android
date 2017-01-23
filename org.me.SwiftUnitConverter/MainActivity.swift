import java.util
import android.app
import android.content
import android.os
import android.util
import android.view
import android.widget

public class MainActivity: Activity {

	public override func onCreate(_ savedInstanceState: Bundle!) {
		super.onCreate(savedInstanceState)
		ContentView = R.layout.main
	}


    public func myConvert(_ v:View) {
        let value:Double = Double.valueOf((findViewById(R.id.Measurement) as! EditText).Text.toString() ?? "0")
        let unitF = (findViewById(R.id.UnitFrom) as! Spinner).getSelectedItem().toString()
        let unitT = (findViewById(R.id.UnitTo) as! Spinner).getSelectedItem().toString()
        let myResult = findViewById(R.id.myResult) as! TextView
        var result:Double = value 
 
         let units = (unitF,unitT)

        switch units
        {
            case ("Inches","Feet"): result = value * 0.083333
            case ("Inches","Miles"): result = value * 0.000016
            case ("Inches","Centimeters"): result = value * 2.54
            case ("Inches","Meters"): result = value * 0.0254
            case ("Inches","Kilometers"): result = value * 0.0000254
            case ("Feet","Inches"): result = value * 12
            case ("Feet","Miles"): result = value * 0.000189394
            case ("Feet","Centimeters"): result = value * 30.48
            case ("Feet","Meters"): result = value * 0.3048
            case ("Feet","Kilometers"): result = value * 0.0003048
            case ("Miles","Inches"): result = value * 63360
            case ("Miles","Feet"): result = value * 5280
            case ("Miles","Centimeters"): result = value * 160934
            case ("Miles","Meters"): result = value * 1609.340000
            case ("Miles","Kilometers"): result = value * 1.60934
            case ("Centimeters","Inches"): result = value * 0.3937
            case ("Centimeters","Feet"): result = value * 0.032808
            case ("Centimeters","Miles"): result = value * 0.000006
            case ("Centimeters","Meters"): result = value * 0.01
            case ("Centimeters","Kilometers"): result = value * 0.00001
            case ("Meters","Inches"): result = value * 39.37008
            case ("Meters","Feet"): result = value * 3.28084
            case ("Meters","Miles"): result = value * 0.000621
            case ("Meters","Centimeters"): result = value * 100
            case ("Meters","Kilometers"): result = value * 0.001
            case ("Kilometers","Inches"): result = value * 39370.08
            case ("Kilometers","Feet"): result = value * 3280.84
            case ("Kilometers","Miles"): result = value * 0.621371
            case ("Kilometers","Centimeters"): result = value * 100000
            case ("Kilometers","Meters"): result = value * 1000
            default:            result = value
        }

        myResult.Text = " \(value) \(unitF) is equal to \(result) \(unitT)"
   }

}
