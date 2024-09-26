/// @description Manages the passage of time and resource change
// You can write your code in this editor

global.time += 5
global.money += global.income
global.resources += global.production
global.approval += global.perception
global.approval -= global.pollution / 10
global.approval = clamp(global.approval, -1000000, 1000000)
global.ratingPollution = global.pollution / 25
global.ratingApproval = int64((global.approval + 1000000) / 400000)

time = global.time
time -= time % 60
time /= 60
hour = time % 24
time -= hour
days = time / 24
if (hour == 0)
{
	hour = 24
}

global.clockHour = hour
global.clockDay = days + 1

alarm[0] = 30



