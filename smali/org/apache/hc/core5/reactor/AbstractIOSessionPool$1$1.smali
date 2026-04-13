.class Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$1$1;
.super Lorg/apache/hc/core5/concurrent/FutureContribution;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$1;->lambda$completed$0(Lorg/apache/hc/core5/concurrent/ComplexFuture;Lorg/apache/hc/core5/reactor/IOSession;Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;Ljava/lang/Object;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/hc/core5/concurrent/FutureContribution<",
        "Lorg/apache/hc/core5/reactor/IOSession;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$1;

.field final synthetic val$future:Lorg/apache/hc/core5/concurrent/ComplexFuture;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$1;Lorg/apache/hc/core5/concurrent/BasicFuture;Lorg/apache/hc/core5/concurrent/ComplexFuture;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$1$1;->this$1:Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$1;

    iput-object p3, p0, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$1$1;->val$future:Lorg/apache/hc/core5/concurrent/ComplexFuture;

    invoke-direct {p0, p2}, Lorg/apache/hc/core5/concurrent/FutureContribution;-><init>(Lorg/apache/hc/core5/concurrent/BasicFuture;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic completed(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/apache/hc/core5/reactor/IOSession;

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$1$1;->completed(Lorg/apache/hc/core5/reactor/IOSession;)V

    return-void
.end method

.method public completed(Lorg/apache/hc/core5/reactor/IOSession;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$1$1;->val$future:Lorg/apache/hc/core5/concurrent/ComplexFuture;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/concurrent/ComplexFuture;->completed(Ljava/lang/Object;)Z

    return-void
.end method
