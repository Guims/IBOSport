.class public final synthetic Lz3/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Lz3/f;

.field public final synthetic r:Ljava/lang/Runnable;

.field public final synthetic s:Lv0/f;


# direct methods
.method public synthetic constructor <init>(Lz3/f;Ljava/lang/Runnable;Lv0/f;I)V
    .locals 0

    iput p4, p0, Lz3/d;->b:I

    iput-object p1, p0, Lz3/d;->q:Lz3/f;

    iput-object p2, p0, Lz3/d;->r:Ljava/lang/Runnable;

    iput-object p3, p0, Lz3/d;->s:Lv0/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lz3/d;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lz3/d;->q:Lz3/f;

    iget-object v0, v0, Lz3/f;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lz3/b;

    const/4 v2, 0x1

    iget-object v3, p0, Lz3/d;->r:Ljava/lang/Runnable;

    iget-object v4, p0, Lz3/d;->s:Lv0/f;

    invoke-direct {v1, v3, v4, v2}, Lz3/b;-><init>(Ljava/lang/Runnable;Lv0/f;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lz3/d;->q:Lz3/f;

    iget-object v0, v0, Lz3/f;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lz3/b;

    const/4 v2, 0x2

    iget-object v3, p0, Lz3/d;->r:Ljava/lang/Runnable;

    iget-object v4, p0, Lz3/d;->s:Lv0/f;

    invoke-direct {v1, v3, v4, v2}, Lz3/b;-><init>(Ljava/lang/Runnable;Lv0/f;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lz3/d;->q:Lz3/f;

    iget-object v0, v0, Lz3/f;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lz3/b;

    const/4 v2, 0x0

    iget-object v3, p0, Lz3/d;->r:Ljava/lang/Runnable;

    iget-object v4, p0, Lz3/d;->s:Lv0/f;

    invoke-direct {v1, v3, v4, v2}, Lz3/b;-><init>(Ljava/lang/Runnable;Lv0/f;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
