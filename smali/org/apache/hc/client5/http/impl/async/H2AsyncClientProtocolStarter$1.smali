.class Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter;->createHandler(Lorg/apache/hc/core5/reactor/ProtocolIOSession;Ljava/lang/Object;)Lorg/apache/hc/core5/reactor/IOEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final framePrinter:Lorg/apache/hc/core5/http2/frame/FramePrinter;

.field final synthetic this$0:Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter$1;->this$0:Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter$1;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lorg/apache/hc/core5/http2/frame/FramePrinter;

    invoke-direct {p1}, Lorg/apache/hc/core5/http2/frame/FramePrinter;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter$1;->framePrinter:Lorg/apache/hc/core5/http2/frame/FramePrinter;

    return-void
.end method

.method private logFlowControl(Ljava/lang/String;III)V
    .locals 1

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter;->access$200()LO5/a;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "{} stream {} flow control {} -> {}"

    invoke-interface {v0, p2, p1}, LO5/a;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private logFrameInfo(Ljava/lang/String;Lorg/apache/hc/core5/http2/frame/RawFrame;)V
    .locals 2

    :try_start_0
    new-instance v0, Lorg/apache/hc/client5/http/impl/async/LogAppendable;

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter;->access$000()LO5/a;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/hc/client5/http/impl/async/LogAppendable;-><init>(LO5/a;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter$1;->framePrinter:Lorg/apache/hc/core5/http2/frame/FramePrinter;

    invoke-virtual {p1, p2, v0}, Lorg/apache/hc/core5/http2/frame/FramePrinter;->printFrameInfo(Lorg/apache/hc/core5/http2/frame/RawFrame;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/async/LogAppendable;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private logFramePayload(Ljava/lang/String;Lorg/apache/hc/core5/http2/frame/RawFrame;)V
    .locals 2

    :try_start_0
    new-instance v0, Lorg/apache/hc/client5/http/impl/async/LogAppendable;

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter;->access$100()LO5/a;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/hc/client5/http/impl/async/LogAppendable;-><init>(LO5/a;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter$1;->framePrinter:Lorg/apache/hc/core5/http2/frame/FramePrinter;

    invoke-virtual {p1, p2, v0}, Lorg/apache/hc/core5/http2/frame/FramePrinter;->printPayload(Lorg/apache/hc/core5/http2/frame/RawFrame;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/async/LogAppendable;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public onFrameInput(Lorg/apache/hc/core5/http/HttpConnection;ILorg/apache/hc/core5/http2/frame/RawFrame;)V
    .locals 1

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter;->access$000()LO5/a;

    move-result-object p1

    invoke-interface {p1}, LO5/a;->c()Z

    move-result p1

    const-string p2, " <<"

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter$1;->val$id:Ljava/lang/String;

    invoke-static {p1, v0, p2}, LB/f;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter$1;->logFrameInfo(Ljava/lang/String;Lorg/apache/hc/core5/http2/frame/RawFrame;)V

    :cond_0
    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter;->access$100()LO5/a;

    move-result-object p1

    invoke-interface {p1}, LO5/a;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter$1;->val$id:Ljava/lang/String;

    invoke-static {p1, v0, p2}, LB/f;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter$1;->logFramePayload(Ljava/lang/String;Lorg/apache/hc/core5/http2/frame/RawFrame;)V

    :cond_1
    return-void
.end method

.method public onFrameOutput(Lorg/apache/hc/core5/http/HttpConnection;ILorg/apache/hc/core5/http2/frame/RawFrame;)V
    .locals 1

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter;->access$000()LO5/a;

    move-result-object p1

    invoke-interface {p1}, LO5/a;->c()Z

    move-result p1

    const-string p2, " >>"

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter$1;->val$id:Ljava/lang/String;

    invoke-static {p1, v0, p2}, LB/f;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter$1;->logFrameInfo(Ljava/lang/String;Lorg/apache/hc/core5/http2/frame/RawFrame;)V

    :cond_0
    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter;->access$100()LO5/a;

    move-result-object p1

    invoke-interface {p1}, LO5/a;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter$1;->val$id:Ljava/lang/String;

    invoke-static {p1, v0, p2}, LB/f;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter$1;->logFramePayload(Ljava/lang/String;Lorg/apache/hc/core5/http2/frame/RawFrame;)V

    :cond_1
    return-void
.end method

.method public onHeaderInput(Lorg/apache/hc/core5/http/HttpConnection;ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/HttpConnection;",
            "I",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/hc/core5/http/Header;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter;->access$300()LO5/a;

    move-result-object p1

    invoke-interface {p1}, LO5/a;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter;->access$300()LO5/a;

    move-result-object p2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter$1;->val$id:Ljava/lang/String;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "{} << {}"

    invoke-interface {p2, v0, v1, v2}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onHeaderOutput(Lorg/apache/hc/core5/http/HttpConnection;ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/HttpConnection;",
            "I",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/hc/core5/http/Header;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter;->access$300()LO5/a;

    move-result-object p1

    invoke-interface {p1}, LO5/a;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter;->access$300()LO5/a;

    move-result-object p2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter$1;->val$id:Ljava/lang/String;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "{} >> {}"

    invoke-interface {p2, v0, v1, v2}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onInputFlowControl(Lorg/apache/hc/core5/http/HttpConnection;III)V
    .locals 2

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter;->access$200()LO5/a;

    move-result-object p1

    invoke-interface {p1}, LO5/a;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter$1;->val$id:Ljava/lang/String;

    const-string v1, " <<"

    invoke-static {p1, v0, v1}, LB/f;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter$1;->logFlowControl(Ljava/lang/String;III)V

    :cond_0
    return-void
.end method

.method public onOutputFlowControl(Lorg/apache/hc/core5/http/HttpConnection;III)V
    .locals 2

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter;->access$200()LO5/a;

    move-result-object p1

    invoke-interface {p1}, LO5/a;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter$1;->val$id:Ljava/lang/String;

    const-string v1, " >>"

    invoke-static {p1, v0, v1}, LB/f;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter$1;->logFlowControl(Ljava/lang/String;III)V

    :cond_0
    return-void
.end method
