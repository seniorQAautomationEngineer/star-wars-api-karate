package dev.swapi.helpers;
import java.util.Arrays;
import java.util.stream.Stream;

public class Calculations {

    public static long countCorrectHeight(String[] height){
        int[] heightNum = Stream.of(height).mapToInt(Integer::parseInt).toArray();
        System.out.println(Arrays.toString(heightNum));
        long size = Arrays.stream(Arrays.stream(heightNum).toArray()).filter(e -> e > 200).count();
        return size;
    }











//    public static long countCorrectHeight2(String[] height){
//        System.out.println("Length " + height.length);
//        System.out.println(Arrays.toString(height));
//        int[] heightNum = Stream.of(height).mapToInt(Integer::parseInt).toArray();
//        System.out.println("----------------------------------------------");
//        System.out.println("Length " + heightNum.length);
//        System.out.println(Arrays.toString(heightNum));
//        long size = Arrays.stream(Arrays.stream(heightNum).toArray()).filter(e -> e > 200).count();
//        return size;
//    }
}
