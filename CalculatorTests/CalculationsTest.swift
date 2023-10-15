import XCTest
@testable import Calculator

final class CalculationsTest: XCTestCase {

    func testPositiveScenarioForAddCalculation(){
        
        //given
        let a = 10
        let b = 20
        let calculation = Calculations()
        
        //when
        let result = calculation.addTwoInt(of: a, with: b)
        
        //then
        XCTAssertEqual(result, 30)
        
    }
    
    func testNegativeScenarioForAddCalculation(){
        
        //given
        let a = 10
        let b = 20
        let calculation = Calculations()
        
        //when
        let result = calculation.addTwoInt(of: a, with: b)
        
        //then
        XCTAssertNotEqual(result, 20.0)
        
    }
    
    func testPositiveScenarioForSubCalculation(){
        
        //given
        let a = 20
        let b = 10
        let calculation = Calculations()
        
        //when
        let result = calculation.subtractTwoInt(of: a, with: b)
        
        //then
        XCTAssertEqual(result, 10.0)
        
    }
    
    func testNegativeScenarioForSubCalculation(){
        
        //given
        let a = 20
        let b = 10
        let calculation = Calculations()
        
        //when
        let result = calculation.subtractTwoInt(of: a, with: b)
        
        //then
        XCTAssertNotEqual(result, 20.0)
        
    }
    
    func testPositiveScenarioForProdCalculation(){
        
        //given
        let a = 20
        let b = 10
        let calculation = Calculations()
        
        //when
        let result = calculation.multiplyTwoInt(of: a, with: b)
        
        //then
        XCTAssertEqual(result, 200.0)
        
    }
    
    func testNegativeScenarioForProdCalculation(){
        
        //given
        let a = 20
        let b = 10
        let calculation = Calculations()
        
        //when
        let result = calculation.multiplyTwoInt(of: a, with: b)
        
        //then
        XCTAssertNotEqual(result, 20.0)
        
    }
    
    func testPositiveScenarioForDivCalculation(){
        
        //given
        let a = 20
        let b = 10
        let calculation = Calculations()
        
        //when
        let result = calculation.divideTwoInt(of: a, by: b)
        
        //then
        XCTAssertEqual(result, 2.0)
        
    }
    
    func testZeroScenarioForDivCalculation(){
        
        //given
        let a = 20
        let b = 0
        let calculation = Calculations()
        
        //when
        let result = calculation.divideTwoInt(of: a, by: b)
        
        //then
        XCTAssertTrue(result.isNaN)
        
    }
    
    func testPositiveScenarioForSinCalculation(){
        
        //given
        let a = 1
        let calculation = Calculations()
        
        //when
        let result = calculation.calculateSin(of: a)
        
        //then
        XCTAssertEqual(result, 0.01745240643728351)
    }
}
