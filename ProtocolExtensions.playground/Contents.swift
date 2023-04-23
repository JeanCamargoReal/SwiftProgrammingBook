import Cocoa

protocol Exercise {
	var caloriesBurned: Double { get set }
	var minutes: Double { get set }
}

struct EllipticalWorkout: Exercise {
	var caloriesBurned: Double
	var minutes: Double
}

struct RunningWorkout: Exercise {
	var caloriesBurned: Double
	var minutes: Double
}

