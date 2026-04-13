.class public final synthetic Lz3/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lz3/f;

.field public final synthetic b:Ljava/util/concurrent/Callable;

.field public final synthetic c:Lv0/f;


# direct methods
.method public synthetic constructor <init>(Lz3/f;Ljava/util/concurrent/Callable;Lv0/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz3/e;->a:Lz3/f;

    iput-object p2, p0, Lz3/e;->b:Ljava/util/concurrent/Callable;

    iput-object p3, p0, Lz3/e;->c:Lv0/f;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lz3/e;->a:Lz3/f;

    iget-object v0, v0, Lz3/f;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, LA/o;

    const/16 v2, 0x1d

    iget-object v3, p0, Lz3/e;->b:Ljava/util/concurrent/Callable;

    iget-object v4, p0, Lz3/e;->c:Lv0/f;

    invoke-direct {v1, v3, v2, v4}, LA/o;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
