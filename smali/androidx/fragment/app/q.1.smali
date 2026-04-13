.class public final Landroidx/fragment/app/q;
.super Landroidx/fragment/app/s;


# instance fields
.field public final synthetic a:LD4/g;

.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic c:Landroidx/fragment/app/F;

.field public final synthetic d:LD4/b;

.field public final synthetic e:LD4/h;


# direct methods
.method public constructor <init>(LD4/h;LD4/g;Ljava/util/concurrent/atomic/AtomicReference;Landroidx/fragment/app/F;LD4/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/q;->e:LD4/h;

    iput-object p2, p0, Landroidx/fragment/app/q;->a:LD4/g;

    iput-object p3, p0, Landroidx/fragment/app/q;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Landroidx/fragment/app/q;->c:Landroidx/fragment/app/F;

    iput-object p5, p0, Landroidx/fragment/app/q;->d:LD4/b;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fragment_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/fragment/app/q;->e:LD4/h;

    iget-object v2, v1, Landroidx/fragment/app/t;->t:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_rq#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Landroidx/fragment/app/t;->f0:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Landroidx/fragment/app/q;->a:LD4/g;

    iget-object v2, v2, LD4/g;->b:LD4/h;

    iget-object v3, v2, Landroidx/fragment/app/t;->H:Landroidx/fragment/app/v;

    if-eqz v3, :cond_0

    iget-object v2, v3, Landroidx/fragment/app/v;->v:Lf/i;

    iget-object v2, v2, Landroidx/activity/j;->z:Landroidx/activity/f;

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroidx/fragment/app/t;->I()Lf/i;

    move-result-object v2

    iget-object v2, v2, Landroidx/activity/j;->z:Landroidx/activity/f;

    :goto_0
    iget-object v3, p0, Landroidx/fragment/app/q;->c:Landroidx/fragment/app/F;

    iget-object v4, p0, Landroidx/fragment/app/q;->d:LD4/b;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroidx/activity/result/g;->d(Ljava/lang/String;Landroidx/lifecycle/r;LC2/b;Landroidx/activity/result/b;)Landroidx/activity/result/d;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/q;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
