import lib.bench;

int tarai(int x, int y, int z){
	if(x <= y){
		return y;
	}else{
		return tarai(tarai(x-1,y,z),tarai(y-1,z,x),tarai(z-1,x,y));
	}
}

void main(){
	bench_start();
	int result = tarai(12,6,0);
	bench_end();
}