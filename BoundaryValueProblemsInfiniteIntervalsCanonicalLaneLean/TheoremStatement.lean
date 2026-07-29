import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean

structure AdmittedObject where
  problemDefined : Prop
  solutionExists : Prop
  conclusion : solutionExists

def AdmittedObjectClosure (O : AdmittedObject) : Prop :=
  O.solutionExists

structure TheoremStatement where
  boundaryProblem : String
  infiniteInterval : Prop
  solutionMethod : String
  carriedRemainder : String

def defaultTheoremStatement : TheoremStatement :=
  {
    boundaryProblem := "Boundary Value Problem on Infinite Interval"
    infiniteInterval := True
    solutionMethod := "Shooting method"
    carriedRemainder := "Remainder: boundedness at infinity"
  }

end BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean
end HautevilleHouse