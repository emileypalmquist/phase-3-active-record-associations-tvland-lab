Character.destroy_all
Show.destroy_all
Network.destroy_all
Actor.destroy_all

actor1 = Actor.create(first_name: "billy", last_name: "bob")

n1 = Network.create(call_letters: "TEST", channel: 101)

Show.create(name: "Jimmy Neutron", day: "Tuesday", season: "three", genre: "Family", network_id: Network.first.id)

Character.create(name: "Jimmy", actor_id: actor1.id, show_id: Show.where('name = ?', "Jimmy Neutron")[0].id, catchphrase: "soemthing about science" )
