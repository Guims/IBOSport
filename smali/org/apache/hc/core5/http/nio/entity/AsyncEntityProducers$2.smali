.class final Lorg/apache/hc/core5/http/nio/entity/AsyncEntityProducers$2;
.super Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/core5/http/nio/entity/AsyncEntityProducers;->createText(Lorg/apache/hc/core5/function/Callback;Lorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lorg/apache/hc/core5/function/Callback;


# direct methods
.method public constructor <init>(IILorg/apache/hc/core5/http/ContentType;Lorg/apache/hc/core5/function/Callback;)V
    .locals 0

    iput-object p4, p0, Lorg/apache/hc/core5/http/nio/entity/AsyncEntityProducers$2;->val$callback:Lorg/apache/hc/core5/function/Callback;

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer;-><init>(IILorg/apache/hc/core5/http/ContentType;)V

    return-void
.end method


# virtual methods
.method public availableData()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public isRepeatable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public produceData(Lorg/apache/hc/core5/http/nio/StreamChannel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/nio/StreamChannel<",
            "Ljava/nio/CharBuffer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/AsyncEntityProducers$2;->val$callback:Lorg/apache/hc/core5/function/Callback;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/function/Callback;->execute(Ljava/lang/Object;)V

    return-void
.end method
