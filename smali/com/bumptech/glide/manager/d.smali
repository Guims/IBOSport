.class public final Lcom/bumptech/glide/manager/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/bumptech/glide/manager/e;

.field public final synthetic q:Lcom/bumptech/glide/manager/e;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/manager/e;Lcom/bumptech/glide/manager/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/manager/d;->q:Lcom/bumptech/glide/manager/e;

    iput-object p2, p0, Lcom/bumptech/glide/manager/d;->b:Lcom/bumptech/glide/manager/e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, LR1/x;->a()LR1/x;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ld2/n;->a()V

    iget-object v0, v0, LR1/x;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bumptech/glide/manager/d;->q:Lcom/bumptech/glide/manager/e;

    iget-object v0, v0, Lcom/bumptech/glide/manager/e;->q:Lcom/bumptech/glide/manager/f;

    iput-boolean v1, v0, Lcom/bumptech/glide/manager/f;->q:Z

    iget-object v0, p0, Lcom/bumptech/glide/manager/d;->q:Lcom/bumptech/glide/manager/e;

    iget-object v0, v0, Lcom/bumptech/glide/manager/e;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/bumptech/glide/manager/d;->b:Lcom/bumptech/glide/manager/e;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    iget-object v0, p0, Lcom/bumptech/glide/manager/d;->q:Lcom/bumptech/glide/manager/e;

    iget-object v0, v0, Lcom/bumptech/glide/manager/e;->q:Lcom/bumptech/glide/manager/f;

    iget-object v0, v0, Lcom/bumptech/glide/manager/f;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method
