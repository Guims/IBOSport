.class public final LL2/l;
.super Ljava/lang/Object;

# interfaces
.implements LL2/n;
.implements LL2/f;
.implements LL2/e;
.implements LL2/c;


# instance fields
.field public final synthetic b:I

.field public final q:Ljava/util/concurrent/Executor;

.field public final r:LL2/a;

.field public final s:LL2/r;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;LL2/a;LL2/r;I)V
    .locals 0

    iput p4, p0, LL2/l;->b:I

    iput-object p1, p0, LL2/l;->q:Ljava/util/concurrent/Executor;

    iput-object p2, p0, LL2/l;->r:LL2/a;

    iput-object p3, p0, LL2/l;->s:LL2/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(LL2/r;)V
    .locals 3

    iget v0, p0, LL2/l;->b:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, LE1/k;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, LE1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    iget-object p1, p0, LL2/l;->q:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    new-instance v0, LE1/k;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, LE1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    iget-object p1, p0, LL2/l;->q:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public d(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LL2/l;->s:LL2/r;

    invoke-virtual {v0, p1}, LL2/r;->j(Ljava/lang/Object;)V

    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, LL2/l;->s:LL2/r;

    invoke-virtual {v0}, LL2/r;->k()V

    return-void
.end method

.method public q(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, LL2/l;->s:LL2/r;

    invoke-virtual {v0, p1}, LL2/r;->i(Ljava/lang/Exception;)V

    return-void
.end method
