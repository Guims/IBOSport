.class public final Lt5/c;
.super Lm5/J;

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final r:Lt5/c;

.field public static final s:Lm5/s;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lt5/c;

    invoke-direct {v0}, Lm5/s;-><init>()V

    sput-object v0, Lt5/c;->r:Lt5/c;

    sget-object v0, Lt5/k;->r:Lt5/k;

    sget v1, Lr5/v;->a:I

    const/16 v2, 0x40

    if-ge v2, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/16 v2, 0xc

    const-string v3, "kotlinx.coroutines.io.parallelism"

    invoke-static {v3, v1, v2}, Lr5/a;->j(Ljava/lang/String;II)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "Expected positive parallelism level, but got "

    const/4 v3, 0x1

    if-lt v1, v3, :cond_3

    sget v4, Lt5/j;->d:I

    if-lt v1, v4, :cond_1

    goto :goto_1

    :cond_1
    if-lt v1, v3, :cond_2

    new-instance v2, Lr5/i;

    invoke-direct {v2, v0, v1}, Lr5/i;-><init>(Lm5/s;I)V

    move-object v0, v2

    :goto_1
    sput-object v0, Lt5/c;->s:Lm5/s;

    return-void

    :cond_2
    invoke-static {v1, v2}, Lcom/google/android/material/datepicker/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-static {v1, v2}, Lcom/google/android/material/datepicker/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final close()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot be invoked on Dispatchers.IO"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, LV4/j;->b:LV4/j;

    invoke-virtual {p0, v0, p1}, Lt5/c;->x(LV4/i;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Dispatchers.IO"

    return-object v0
.end method

.method public final x(LV4/i;Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lt5/c;->s:Lm5/s;

    invoke-virtual {v0, p1, p2}, Lm5/s;->x(LV4/i;Ljava/lang/Runnable;)V

    return-void
.end method
