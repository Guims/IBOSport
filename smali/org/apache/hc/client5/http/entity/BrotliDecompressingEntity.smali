.class public Lorg/apache/hc/client5/http/entity/BrotliDecompressingEntity;
.super Lorg/apache/hc/client5/http/entity/DecompressingEntity;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/HttpEntity;)V
    .locals 1

    invoke-static {}, Lorg/apache/hc/client5/http/entity/BrotliInputStreamFactory;->getInstance()Lorg/apache/hc/client5/http/entity/BrotliInputStreamFactory;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/hc/client5/http/entity/DecompressingEntity;-><init>(Lorg/apache/hc/core5/http/HttpEntity;Lorg/apache/hc/client5/http/entity/InputStreamFactory;)V

    return-void
.end method

.method public static isAvailable()Z
    .locals 1

    :try_start_0
    const-string v0, "org.brotli.dec.BrotliInputStream"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method
