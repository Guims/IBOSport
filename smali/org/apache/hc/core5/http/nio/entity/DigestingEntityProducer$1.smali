.class Lorg/apache/hc/core5/http/nio/entity/DigestingEntityProducer$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/DataStreamChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/core5/http/nio/entity/DigestingEntityProducer;->produce(Lorg/apache/hc/core5/http/nio/DataStreamChannel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/hc/core5/http/nio/entity/DigestingEntityProducer;

.field final synthetic val$channel:Lorg/apache/hc/core5/http/nio/DataStreamChannel;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/nio/entity/DigestingEntityProducer;Lorg/apache/hc/core5/http/nio/DataStreamChannel;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/entity/DigestingEntityProducer$1;->this$0:Lorg/apache/hc/core5/http/nio/entity/DigestingEntityProducer;

    iput-object p2, p0, Lorg/apache/hc/core5/http/nio/entity/DigestingEntityProducer$1;->val$channel:Lorg/apache/hc/core5/http/nio/DataStreamChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endStream()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/hc/core5/http/nio/entity/DigestingEntityProducer$1;->endStream(Ljava/util/List;)V

    return-void
.end method

.method public endStream(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/hc/core5/http/Header;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/DigestingEntityProducer$1;->this$0:Lorg/apache/hc/core5/http/nio/entity/DigestingEntityProducer;

    invoke-static {v0}, Lorg/apache/hc/core5/http/nio/entity/DigestingEntityProducer;->access$000(Lorg/apache/hc/core5/http/nio/entity/DigestingEntityProducer;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/hc/core5/http/nio/entity/DigestingEntityProducer;->access$102(Lorg/apache/hc/core5/http/nio/entity/DigestingEntityProducer;[B)[B

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    new-instance p1, Lorg/apache/hc/core5/http/message/BasicHeader;

    iget-object v1, p0, Lorg/apache/hc/core5/http/nio/entity/DigestingEntityProducer$1;->this$0:Lorg/apache/hc/core5/http/nio/entity/DigestingEntityProducer;

    invoke-static {v1}, Lorg/apache/hc/core5/http/nio/entity/DigestingEntityProducer;->access$000(Lorg/apache/hc/core5/http/nio/entity/DigestingEntityProducer;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    const-string v2, "digest-algo"

    invoke-direct {p1, v2, v1}, Lorg/apache/hc/core5/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lorg/apache/hc/core5/http/message/BasicHeader;

    iget-object v1, p0, Lorg/apache/hc/core5/http/nio/entity/DigestingEntityProducer$1;->this$0:Lorg/apache/hc/core5/http/nio/entity/DigestingEntityProducer;

    invoke-static {v1}, Lorg/apache/hc/core5/http/nio/entity/DigestingEntityProducer;->access$100(Lorg/apache/hc/core5/http/nio/entity/DigestingEntityProducer;)[B

    move-result-object v1

    invoke-static {v1}, Lorg/apache/hc/core5/util/TextUtils;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "digest"

    invoke-direct {p1, v2, v1}, Lorg/apache/hc/core5/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/apache/hc/core5/http/nio/entity/DigestingEntityProducer$1;->val$channel:Lorg/apache/hc/core5/http/nio/DataStreamChannel;

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/http/nio/DataStreamChannel;->endStream(Ljava/util/List;)V

    return-void
.end method

.method public requestOutput()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/DigestingEntityProducer$1;->val$channel:Lorg/apache/hc/core5/http/nio/DataStreamChannel;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/DataStreamChannel;->requestOutput()V

    return-void
.end method

.method public bridge synthetic write(Ljava/nio/Buffer;)I
    .locals 0

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/nio/entity/DigestingEntityProducer$1;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/hc/core5/http/nio/entity/DigestingEntityProducer$1;->val$channel:Lorg/apache/hc/core5/http/nio/DataStreamChannel;

    invoke-interface {v1, p1}, Lorg/apache/hc/core5/http/nio/DataStreamChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lorg/apache/hc/core5/http/nio/entity/DigestingEntityProducer$1;->this$0:Lorg/apache/hc/core5/http/nio/entity/DigestingEntityProducer;

    invoke-static {v1}, Lorg/apache/hc/core5/http/nio/entity/DigestingEntityProducer;->access$000(Lorg/apache/hc/core5/http/nio/entity/DigestingEntityProducer;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    :cond_0
    return p1
.end method
