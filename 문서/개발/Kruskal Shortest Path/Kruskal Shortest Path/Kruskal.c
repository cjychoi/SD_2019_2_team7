/* 최소비용신장트리(MST) - Kruskal's Algorithm - 탐색 edge 출력, 최소비용*/
#include <stdio.h>
#include <stdlib.h>
#pragma warning(disable: 4996)
#define MAX_VERTICES 100
#define MAX_ELEMENT 100
#define NODE_NUM 5 // 변경 - 여행지 수

typedef struct {
	float key;
	int u;
	int v;
}element;

typedef struct {
	element heap[MAX_ELEMENT];
	int heap_size;	//현재 heap의 노드 수
}heaptype;

int parent[MAX_VERTICES];

void kruskal(int);

void main() {
	kruskal(NODE_NUM);		// number of node
}

void insert_min_heap(heaptype* h, element e) {
	int i;
	i = ++(h->heap_size);//heap size 1증가 시키고 그값을 i에 대입
	while ((i != 1) && (e.key < h->heap[i / 2].key)) {
		h->heap[i] = h->heap[i / 2];
		i /= 2;
	}
	h->heap[i] = e;
}

element delete_min_heap(heaptype* h) {
	int parent, child;
	element item, temp;
	item = h->heap[1];
	temp = h->heap[(h->heap_size)--];
	parent = 1; child = 2;
	while (child <= h->heap_size) {
		if ((child < h->heap_size) && (h->heap[child].key > h->heap[child + 1].key)) {
			child++;
		}
		if (temp.key <= h->heap[child].key) break;
		h->heap[parent] = h->heap[child];
		parent = child;
		child *= 2;
	}
	h->heap[parent] = temp;
	return item;
}

void insert_heap_edge(heaptype* h, int u, int v, float weight) {
	element e;
	e.u = u;
	e.v = v;
	e.key = weight;
	insert_min_heap(h, e);
}

void insert_all_edges(heaptype* h) {
	FILE* f;
	int node_num, u, v;
	float weight;
	f = fopen("input.txt", "r");
	fscanf(f, "%d", &node_num);
	for (int i = 0; i < node_num; i++) {
		fscanf(f, "%d %d %f", &u, &v, &weight);
		insert_heap_edge(h, u, v, weight);
	}
}

void init(heaptype* h) {//init heap
	h->heap_size = 0;
}
void set_init(int n) {//init parent
	for (int i = 0; i < n; i++) {
		parent[i] = -1;
	}
}
int find(int i) {
	for (; parent[i] >= 0; i = parent[i]);
	return i;
}
void uni(int i, int j) {
	parent[i] = j;
}
void kruskal(int n) {
	float min_cost = 0;
	int edge_accepted = 0;
	heaptype h;
	int uset, vset;
	element e;
	init(&h);	//init heap
	insert_all_edges(&h);
	set_init(n);	//init parent
	while (edge_accepted < (n - 1)) {
		e = delete_min_heap(&h);
		uset = find(e.u);
		vset = find(e.v);
		if (uset != vset) {//부모가 다른경우 -> cycle이 이루어지지 않는 경우
			printf("(%d,%d) %.1f \n", e.u, e.v, e.key);
			edge_accepted++;
			uni(uset, vset);//두 vertex합치기 
			min_cost += e.key;
		}
	}
	printf("\n최소비용 : %.1f\n\n", min_cost);
}

/* input.txt
서울
10
0 1 3.9
0 2 8.8
0 3 15
0 4 3.4
1 2 6.4
1 3 14
1 4 3.8
2 3 11
2 4 8.4
3 4 12

대구
10
0 1 4.5
0 2 7.1
0 3 4.8
0 4 30
1 2 4.8
1 3 5.4
1 4 28
2 3 4.1
2 4 31
3 4 33

경주
10
0 1 8.1
0 2 13
0 3 3.1
0 4 8.5
1 2 8.3
1 3 5.1
1 4 0.8
2 3 13
2 4 9.1
3 4 5.4

부산
10
0 1 12
0 2 13
0 3 3.8
0 4 3.9
1 2 2.5
1 3 16
1 4 16
2 3 18
2 4 18
3 4 0.6

제주
10
0 1 37
0 2 38
0 3 31
0 4 21
1 2 5.7
1 3 23
1 4 45
2 3 26
2 4 45
3 4 29

*/