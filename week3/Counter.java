public class Counter {
    private long value;
    private Lock lock;

    public Counter(Lock lock) {
        this.lock = lock;
        this.value = 0;
    }

    public long getAndIncrement(int id) {
        lock.lock(id);
        long temp = value;
        value = temp + 1;
        lock.unlock(id);
        return temp;
    }
}