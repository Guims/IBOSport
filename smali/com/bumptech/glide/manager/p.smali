.class public final Lcom/bumptech/glide/manager/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public q:Z

.field public final synthetic r:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/media3/ui/AspectRatioFrameLayout;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/manager/p;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/manager/p;->r:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/manager/q;Z)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/manager/p;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/manager/p;->r:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/bumptech/glide/manager/p;->q:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/bumptech/glide/manager/p;->b:I

    iget-object v1, p0, Lcom/bumptech/glide/manager/p;->r:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/manager/p;->q:Z

    check-cast v1, Landroidx/media3/ui/AspectRatioFrameLayout;

    sget v0, Landroidx/media3/ui/AspectRatioFrameLayout;->s:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_0
    check-cast v1, Lcom/bumptech/glide/manager/q;

    iget-boolean v0, p0, Lcom/bumptech/glide/manager/p;->q:Z

    invoke-static {}, Ld2/n;->a()V

    iget-object v1, v1, Lcom/bumptech/glide/manager/q;->a:LE1/d;

    iget-boolean v2, v1, LE1/d;->a:Z

    iput-boolean v0, v1, LE1/d;->a:Z

    if-eq v2, v0, :cond_0

    iget-object v1, v1, LE1/d;->b:Ljava/lang/Object;

    check-cast v1, Lcom/bumptech/glide/manager/o;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/manager/o;->a(Z)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
