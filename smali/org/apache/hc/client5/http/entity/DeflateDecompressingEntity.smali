.class public Lorg/apache/hc/client5/http/entity/DeflateDecompressingEntity;
.super Lorg/apache/hc/client5/http/entity/DecompressingEntity;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/HttpEntity;)V
    .locals 1

    invoke-static {}, Lorg/apache/hc/client5/http/entity/DeflateInputStreamFactory;->getInstance()Lorg/apache/hc/client5/http/entity/DeflateInputStreamFactory;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/hc/client5/http/entity/DecompressingEntity;-><init>(Lorg/apache/hc/core5/http/HttpEntity;Lorg/apache/hc/client5/http/entity/InputStreamFactory;)V

    return-void
.end method
