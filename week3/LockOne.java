public class LockOne implements Lock {

    private boolean[] flag = new boolean[2];

    public void lock(int i) {
        int j = 1 - i;
        System.out.println(String.format("Other thread is id %d", j));
        flag[i] = true;
        while (flag[j]) {}
        System.out.println(String.format("Thread %d acquired lock.", i));
    }

    public void unlock(int i){
        flag[i] = false;
        System.out.println(String.format("Thread %d released lock.", i));
    }
}