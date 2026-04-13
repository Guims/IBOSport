.class public final Lcom/bumptech/glide/manager/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# instance fields
.field public final synthetic b:Landroid/view/View;

.field public final synthetic q:Lcom/bumptech/glide/manager/f;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/manager/f;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/manager/e;->q:Lcom/bumptech/glide/manager/f;

    iput-object p2, p0, Lcom/bumptech/glide/manager/e;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onDraw()V
    .locals 2

    new-instance v0, Lcom/bumptech/glide/manager/d;

    invoke-direct {v0, p0, p0}, Lcom/bumptech/glide/manager/d;-><init>(Lcom/bumptech/glide/manager/e;Lcom/bumptech/glide/manager/e;)V

    invoke-static {}, Ld2/n;->f()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
