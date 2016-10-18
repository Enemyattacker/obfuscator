package ru.stetsenko;
/**
 * Класс демонстрирующий различный транспорт
 *
 * @author Стеценко Алексей
 */
public class Vehicle {

    private    int type;
    private int    maxSpeed;
    private int length;
    private int    height;
    private int width;

	
	
    /**
     *
     * @param type Тип транспорта (1 - наземный, 2 - морской, 3 - воздушный)
     * @param maxSpeed Максимальная скорость данного транспорта
     * @param length Длина транспорта
     * @param width Ширина транспорта
     * @param height Высота трансорта
     */
    public Vehicle(int type, int maxSpeed, int length, int width, int height) {
        this.type = type;
        this.maxSpeed = maxSpeed;
        this.length = length;
        this.height = height;
        this.width = width;
    }

	//комментарий для проверки удаления однострочных комментариев
    public int getType() {
        return this.type;
    }

    public String getTypeAsString(){
        switch (this.type) {
            case 1:
                return "Наземный";
            case 2:
                return "Морской";
            case 3:
                return "Воздушный";
        }
           return "";
    }

    public int getMaxSpeed() {
        return this.maxSpeed;
    }

    public int getLength(){
        return this.length;
    }

    public int getHeight() {
        return this.height;
    }

    public int getWidth() {
        return this.width;
    }

    public void setType(int type) {
        this.type = type;
    }

    public void setMaxSpeed(int maxSpeed) { this.maxSpeed = maxSpeed;}

    public void setLength (int length) { this.length = length;}

       public void setHeight (int height) {this.height = height;}

    public void setWidth (int width) {this.width = width;}

    @Override
    public String toString() {
        return "Тип: " + this.getTypeAsString() + ", скорость : " + this.maxSpeed + ", длина: " + this.length + ", высота: " + this.height + ", ширина: " + this.width;
    }
}