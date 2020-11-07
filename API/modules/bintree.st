#ifndef __BINARY_TREE__
#define __BINARY_TREE__

typedef struct node {
  int data;
  struct node *left;
  struct node *right;
} node;

node* new_node(int d) {
	node* n;
	n->data  = d;
	n->left  = NULL;
	n->right = NULL;

	return n;
}

void destroy_node(node *n) {
  if( n != 0 ) {
      destroy_node(n->left);
      destroy_node(n->right);
      free( n );
  }
}

void insert(int data, node* tree) {
    if( tree->data == NULL ) {
        tree = (node*)malloc( sizeof( node ) );
        tree->data = data;
        tree->left =  NULL;    
        tree->right = NULL;

    } else if(data < tree->data) {
        insert( data, tree->left );

    } else if(data > (tree)->data) {
        insert( data, tree->right );
    }
}

node* search(int key, struct node *tree) {
  if( tree ) {
      if( key == tree->data ) {
          return tree;

      } else if( key < tree->data ) {
          return search(key, tree->left);

      } else {
          return search(key, tree->right);
      }
  } else return 0;
}

#endif //Starlang bintree.st