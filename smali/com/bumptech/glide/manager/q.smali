.class public final Lcom/bumptech/glide/manager/q;
.super Landroid/net/ConnectivityManager$NetworkCallback;


# instance fields
.field public final synthetic a:LE1/d;


# direct methods
.method public constructor <init>(LE1/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/manager/q;->a:LE1/d;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 1

    new-instance p1, Lcom/bumptech/glide/manager/p;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/bumptech/glide/manager/p;-><init>(Lcom/bumptech/glide/manager/q;Z)V

    invoke-static {}, Ld2/n;->f()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 1

    new-instance p1, Lcom/bumptech/glide/manager/p;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/bumptech/glide/manager/p;-><init>(Lcom/bumptech/glide/manager/q;Z)V

    invoke-static {}, Ld2/n;->f()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
