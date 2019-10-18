import java.util.ArrayList;

public class LockTest implements Runnable {

    public static void main(String[] args) {
        new LockTest().run();
    }
    
    public void run() {
        Lock lock = new LockOne();
        Counter counter = new Counter(lock);
        ArrayList<Thread> threads = new ArrayList<Thread>(2);
        
        for (int i = 0; i < 2; i++) {
            threads.add(new Thread(new Worker(counter, i)));
        }

        threads.forEach(n -> n.start());
    }
}