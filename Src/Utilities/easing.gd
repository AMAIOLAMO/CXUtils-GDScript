## A utility class which calculates easings and tweenings
class_name Easing

class In:
	static func sine(x: float) -> float:
		return 1.0 - cos((x * PI) / 2.0)
	
	static func cubic(x: float) -> float:
		return x * x * x
	
	static func expo(x: float) -> float:
		return 0.0 if x == 0.0 else pow(2.0, 10.0 * x - 10.0)
	

	const C4 : float = (2.0 * PI) / 3.0
	
	static func elastic(x: float) -> float:
		return 0.0 if x == 0.0 else (1.0 if x == 1.0 else -pow(2.0, 10.0 * x - 10.0) * sin((x * 10.0 - 10.75) * C4))
	
class Out:
	static func sine(x: float) -> float:
		return sin((x * PI) / 2.0)
	
	static func cubic(x: float) -> float:
		return 1.0 - pow(1.0 - x, 3.0)
	
	static func expo(x: float) -> float:
		return 1.0 if x == 1 else 1.0 - pow(2.0, -10.0 * x)

class InOut:
	static func sine(x: float) -> float:
		return -(cos(PI * x) - 1.0) / 2.0
	
	static func cubic(x: float) -> float:
		return 4.0 * In.cubic(x) if x < 0.5 else 1.0 - pow(-2.0 * x + 2.0, 3.0) / 2.0
	
	static func expo(x: float) -> float:
		return 0.0 if x == 0.0 else (1.0 if x == 1.0 else (pow(2.0, 20.0 * x - 10.0) / 2.0 if x < 0.5 else (2.0 - pow(2.0, -20.0 * x + 10.0)) / 2.0))


enum EaseType {
	InSine, InCubic, InExpo, InElastic,
	OutSine, OutCubic, OutExpo,
	InOutSine, InOutCubic, InOutExpo
}
