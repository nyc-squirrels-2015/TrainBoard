User.create(name: "Vivek", email: "vr@email.com", password: "password")

Line.create(name: "North Jersey Coast Line", message_id: 1)
Line.create(name: "Northeast Corridor")
Line.create(name: "Raritan Valley")
Line.create(name: "Morris and Essex")
Line.create(name: "Main Bergen/Port Jervis")
Line.create(name: "Montclair-Boonton")


Message.create(content:"This is a slow train", user_id: 1, line_id: 1)
