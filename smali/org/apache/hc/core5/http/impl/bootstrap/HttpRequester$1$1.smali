.class Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/io/EofSensorWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$1;->getContent()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$1;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$1;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$1$1;->this$1:Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public eofDetected(Ljava/io/InputStream;)Z
    .locals 0

    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$1$1;->this$1:Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$1;

    invoke-static {p1}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$1;->access$100(Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$1;)V

    const/4 p1, 0x0

    return p1
.end method

.method public streamAbort(Ljava/io/InputStream;)Z
    .locals 0

    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$1$1;->this$1:Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$1;

    invoke-static {p1}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$1;->access$200(Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$1;)V

    const/4 p1, 0x0

    return p1
.end method

.method public streamClosed(Ljava/io/InputStream;)Z
    .locals 0

    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$1$1;->this$1:Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$1;

    invoke-static {p1}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$1;->access$100(Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$1;)V

    const/4 p1, 0x0

    return p1
.end method
