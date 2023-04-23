import Cocoa

protocol Exercise {
	var caloriesBurned: Double { get set }
	var minutes: Double { get set }
}

struct EllipticalWorkout: Exercise {
	var caloriesBurned: Double
	var minutes: Double
}

let ellippiticalWorkout = EllipticalWorkout(caloriesBurned: 335, minutes: 30)

struct RunningWorkout: Exercise {
	var caloriesBurned: Double
	var minutes: Double
	var meters: Double
}

let runningWorkout = RunningWorkout(caloriesBurned: 350, minutes: 25, meters: 5000)

extension Exercise {
	var caloriesBurnedPerMinute: Double {
		return caloriesBurned / minutes
	}
}

print(ellippiticalWorkout.caloriesBurnedPerMinute)
print(runningWorkout.caloriesBurnedPerMinute)
