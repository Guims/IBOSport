.class public final Lt3/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final b:Lt3/y;

.field public final q:Lt3/s;


# direct methods
.method public constructor <init>(Lt3/y;Lt3/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt3/e;->b:Lt3/y;

    iput-object p2, p0, Lt3/e;->q:Lt3/s;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lt3/e;->b:Lt3/y;

    iget-object v0, v0, Lt3/o;->b:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lt3/e;->q:Lt3/s;

    invoke-static {v0}, Lt3/o;->i(Lt3/s;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lt3/o;->u:LC2/b;

    iget-object v2, p0, Lt3/e;->b:Lt3/y;

    invoke-virtual {v1, v2, p0, v0}, LC2/b;->i(Lt3/o;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lt3/e;->b:Lt3/y;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lt3/o;->f(Lt3/o;Z)V

    :cond_1
    :goto_0
    return-void
.end method
