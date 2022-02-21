import {Socket} from "phoenix"
//let socket = new Socket("/socket", {params: {token: window.userToken}})
let socket = new WebSocket("ws://localhost:4000/socket?vsn=2.0.0")

socket.connect()

let channel = socket.channel("comments:1", {})
channel.join()
  .receive("ok", resp => { console.log("Joined successfully", resp) })
  .receive("error", resp => { console.log("Unable to join", resp) })

export default socket
  