# Write your code here.

def badge_maker(name)
    return "Hello, my name is #{name}."
end

def batch_badge_creator(names_array)
    index = 0
    names_array.each do |name_in_array|
        names_array[index] = badge_maker(name_in_array)
        index += 1
    end
    return names_array
end

def assign_rooms(attendees)
    
    room_assignments = []

    attendees.each_with_index do |name, index|
        room_assignments[index] = "Hello, #{name.split.last.delete('.')}! You'll be assigned to room #{index + 1}!"
    end

    return room_assignments
end

def printer(attendees)
    batch_badge_creator(attendees).each do |name|
        puts "#{name}"
    end
    assign_rooms(attendees).each do |name|
        puts "#{name}"
    end
end

