.class Lorg/apache/hc/client5/http/impl/io/LoggingSocketHolder;
.super Lorg/apache/hc/core5/http/impl/io/SocketHolder;


# instance fields
.field private final wire:Lorg/apache/hc/client5/http/impl/Wire;


# direct methods
.method public constructor <init>(Ljava/net/Socket;Ljava/lang/String;LO5/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/http/impl/io/SocketHolder;-><init>(Ljava/net/Socket;)V

    new-instance p1, Lorg/apache/hc/client5/http/impl/Wire;

    invoke-direct {p1, p3, p2}, Lorg/apache/hc/client5/http/impl/Wire;-><init>(LO5/a;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/io/LoggingSocketHolder;->wire:Lorg/apache/hc/client5/http/impl/Wire;

    return-void
.end method


# virtual methods
.method public getInputStream(Ljava/net/Socket;)Ljava/io/InputStream;
    .locals 2

    new-instance v0, Lorg/apache/hc/client5/http/impl/io/LoggingInputStream;

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/impl/io/SocketHolder;->getInputStream(Ljava/net/Socket;)Ljava/io/InputStream;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/io/LoggingSocketHolder;->wire:Lorg/apache/hc/client5/http/impl/Wire;

    invoke-direct {v0, p1, v1}, Lorg/apache/hc/client5/http/impl/io/LoggingInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/hc/client5/http/impl/Wire;)V

    return-object v0
.end method

.method public getOutputStream(Ljava/net/Socket;)Ljava/io/OutputStream;
    .locals 2

    new-instance v0, Lorg/apache/hc/client5/http/impl/io/LoggingOutputStream;

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/impl/io/SocketHolder;->getOutputStream(Ljava/net/Socket;)Ljava/io/OutputStream;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/io/LoggingSocketHolder;->wire:Lorg/apache/hc/client5/http/impl/Wire;

    invoke-direct {v0, p1, v1}, Lorg/apache/hc/client5/http/impl/io/LoggingOutputStream;-><init>(Ljava/io/OutputStream;Lorg/apache/hc/client5/http/impl/Wire;)V

    return-object v0
.end method
