public class Worker implements Runnable {
    
    private Counter counter;
    private int id;
    public Worker(Counter counter, int id) {
        this.counter = counter;
        this.id = id;
    }

    public void run() {
        for (int i = 0; i < 10; i++) {
            System.out.println(counter.getAndIncrement(id));
        }
    }
}