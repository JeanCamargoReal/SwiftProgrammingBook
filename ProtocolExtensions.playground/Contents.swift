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

func caloriesBurnedPerMinute<E: Exercise>(for exercise: E) -> Double {
	return exercise.caloriesBurned / exercise.minutes
}

print(caloriesBurnedPerMinute(for: ellippiticalWorkout))
print(caloriesBurnedPerMinute(for: runningWorkout))
