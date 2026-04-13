.class public final Lm5/W;
.super Lm5/f;


# instance fields
.field public final x:Lm5/l;


# direct methods
.method public constructor <init>(LV4/d;Lm5/l;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lm5/f;-><init>(ILV4/d;)V

    iput-object p2, p0, Lm5/W;->x:Lm5/l;

    return-void
.end method


# virtual methods
.method public final p(Lm5/a0;)Ljava/lang/Throwable;
    .locals 2

    iget-object v0, p0, Lm5/W;->x:Lm5/l;

    invoke-virtual {v0}, Lm5/a0;->A()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lm5/Y;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lm5/Y;

    invoke-virtual {v1}, Lm5/Y;->c()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    instance-of v1, v0, Lm5/n;

    if-eqz v1, :cond_1

    check-cast v0, Lm5/n;

    iget-object p1, v0, Lm5/n;->a:Ljava/lang/Throwable;

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lm5/a0;->w()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    return-object p1
.end method

.method public final x()Ljava/lang/String;
    .locals 1

    const-string v0, "AwaitContinuation"

    return-object v0
.end method
