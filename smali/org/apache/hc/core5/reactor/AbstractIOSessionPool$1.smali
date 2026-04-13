.class Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/core5/reactor/AbstractIOSessionPool;->getSession(Ljava/lang/Object;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/hc/core5/concurrent/FutureCallback<",
        "Lorg/apache/hc/core5/reactor/IOSession;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/hc/core5/reactor/AbstractIOSessionPool;

.field final synthetic val$connectTimeout:Lorg/apache/hc/core5/util/Timeout;

.field final synthetic val$endpoint:Ljava/lang/Object;

.field final synthetic val$future:Lorg/apache/hc/core5/concurrent/ComplexFuture;

.field final synthetic val$poolEntry:Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/reactor/AbstractIOSessionPool;Lorg/apache/hc/core5/concurrent/ComplexFuture;Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;Ljava/lang/Object;Lorg/apache/hc/core5/util/Timeout;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$1;->this$0:Lorg/apache/hc/core5/reactor/AbstractIOSessionPool;

    iput-object p2, p0, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$1;->val$future:Lorg/apache/hc/core5/concurrent/ComplexFuture;

    iput-object p3, p0, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$1;->val$poolEntry:Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;

    iput-object p4, p0, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$1;->val$endpoint:Ljava/lang/Object;

    iput-object p5, p0, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$1;->val$connectTimeout:Lorg/apache/hc/core5/util/Timeout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$1;Lorg/apache/hc/core5/concurrent/ComplexFuture;Lorg/apache/hc/core5/reactor/IOSession;Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;Ljava/lang/Object;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$1;->lambda$completed$0(Lorg/apache/hc/core5/concurrent/ComplexFuture;Lorg/apache/hc/core5/reactor/IOSession;Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;Ljava/lang/Object;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic lambda$completed$0(Lorg/apache/hc/core5/concurrent/ComplexFuture;Lorg/apache/hc/core5/reactor/IOSession;Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;Ljava/lang/Object;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Boolean;)V
    .locals 6

    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p6

    if-eqz p6, :cond_0

    invoke-virtual {p1, p2}, Lorg/apache/hc/core5/concurrent/ComplexFuture;->completed(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$1;->this$0:Lorg/apache/hc/core5/reactor/AbstractIOSessionPool;

    new-instance v5, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$1$1;

    invoke-direct {v5, p0, p1, p1}, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$1$1;-><init>(Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$1;Lorg/apache/hc/core5/concurrent/BasicFuture;Lorg/apache/hc/core5/concurrent/ComplexFuture;)V

    const/4 v2, 0x1

    move-object v1, p3

    move-object v3, p4

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool;->access$000(Lorg/apache/hc/core5/reactor/AbstractIOSessionPool;Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;ZLjava/lang/Object;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    return-void
.end method


# virtual methods
.method public cancelled()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$1;->val$future:Lorg/apache/hc/core5/concurrent/ComplexFuture;

    invoke-virtual {v0}, Lorg/apache/hc/core5/concurrent/BasicFuture;->cancel()Z

    return-void
.end method

.method public bridge synthetic completed(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/apache/hc/core5/reactor/IOSession;

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$1;->completed(Lorg/apache/hc/core5/reactor/IOSession;)V

    return-void
.end method

.method public completed(Lorg/apache/hc/core5/reactor/IOSession;)V
    .locals 8

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$1;->this$0:Lorg/apache/hc/core5/reactor/AbstractIOSessionPool;

    iget-object v3, p0, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$1;->val$future:Lorg/apache/hc/core5/concurrent/ComplexFuture;

    iget-object v5, p0, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$1;->val$poolEntry:Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;

    iget-object v6, p0, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$1;->val$endpoint:Ljava/lang/Object;

    iget-object v7, p0, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$1;->val$connectTimeout:Lorg/apache/hc/core5/util/Timeout;

    new-instance v1, Lorg/apache/hc/core5/reactor/a;

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Lorg/apache/hc/core5/reactor/a;-><init>(Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$1;Lorg/apache/hc/core5/concurrent/ComplexFuture;Lorg/apache/hc/core5/reactor/IOSession;Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;Ljava/lang/Object;Lorg/apache/hc/core5/util/Timeout;)V

    invoke-virtual {v0, v4, v1}, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool;->validateSession(Lorg/apache/hc/core5/reactor/IOSession;Lorg/apache/hc/core5/function/Callback;)V

    return-void
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$1;->val$future:Lorg/apache/hc/core5/concurrent/ComplexFuture;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/concurrent/ComplexFuture;->failed(Ljava/lang/Exception;)Z

    return-void
.end method
