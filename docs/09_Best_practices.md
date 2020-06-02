# Best Practices

## Booking a server

Before booking a server look at the server information sheet to verify that the resource can meet your needs. 

Book the Server with our booking system detailing your name, short description of tasks, forseen resources used (i.e. gpu, cpu threads,ram) - the booking system will be either an excel file or a shared calendar.

## Docker Considerations

* Always check what are the existing images before pulling a new one with:

   ```shell
   docker image ls
   ```
 
*  To check what is running and which ports are occupied always run:

   ```shell
   docker ps 
   ```


## System Monitoring 

It is highly recommended that you monitor the systems processes during before and while running your processes. This can be done via the interactive system-monitor process-viewer and process-manager **htop**, which can be started by typing htop into the terminal and pressing enter: 


```shell
htop
```

Things to keep an eye on: 

* How many threads are currently being used?
* How much memory is available?

If your process is taking longer than expected, then this may be caused by either too many processes running in parallel, or insufficient memory being available. The later can result in swap memory being used, which will significantly slow down your processes. 

## GPU Monitoring 

Another resource that requires monitoring are GPUs. A GPU can be monitored using the NVIDIA System Management Interface  (nvididia-smi):


```shell
watch -n 0.1 nvidia-smi
```

This interface will allow you to monitor the memory usage, volatile GPU utility, temperature and fan speed. If there is no memory available, then it is worth enquiring with the other individual using the GPU if they are using TensorFlow and have enabled memory growth. If memory growth has not been enabled, then TensorFlow will by default allocate the all available GPU memory to a task. See the following discussion for [more information](https://stackoverflow.com/questions/34199233/how-to-prevent-tensorflow-from-allocating-the-totality-of-a-gpu-memory). Memory growth can be enabled as follows within TensorFlow:

```
onfigProto()
config.gpu_options.allow_growth=True
sess = tf.Session(config=config)
```

When servers are situated within a non-air conditioned room it is also worth keeping an eye on the GPUs temperature, in particular when the server houses multiple GPUs. 

