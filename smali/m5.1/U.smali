.class public Lm5/U;
.super Lm5/a0;


# instance fields
.field public final r:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lm5/a0;-><init>(Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lm5/a0;->D(Lm5/Q;)V

    sget-object v2, Lm5/a0;->q:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm5/i;

    instance-of v4, v3, Lm5/j;

    if-eqz v4, :cond_0

    check-cast v3, Lm5/j;

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lm5/V;->m()Lm5/a0;

    move-result-object v3

    :goto_1
    invoke-virtual {v3}, Lm5/a0;->x()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm5/i;

    instance-of v5, v3, Lm5/j;

    if-eqz v5, :cond_2

    check-cast v3, Lm5/j;

    goto :goto_2

    :cond_2
    move-object v3, v1

    :goto_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lm5/V;->m()Lm5/a0;

    move-result-object v3

    goto :goto_1

    :cond_3
    move v0, v4

    :goto_3
    iput-boolean v0, p0, Lm5/U;->r:Z

    return-void
.end method


# virtual methods
.method public final x()Z
    .locals 1

    iget-boolean v0, p0, Lm5/U;->r:Z

    return v0
.end method

.method public final y()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
