.class public Lorg/apache/hc/core5/http/config/NamedElementChain$Node;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/core5/http/config/NamedElementChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Node"
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private next:Lorg/apache/hc/core5/http/config/NamedElementChain$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/config/NamedElementChain<",
            "TE;>.Node;"
        }
    .end annotation
.end field

.field private previous:Lorg/apache/hc/core5/http/config/NamedElementChain$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/config/NamedElementChain<",
            "TE;>.Node;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/hc/core5/http/config/NamedElementChain;

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/config/NamedElementChain;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TE;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/hc/core5/http/config/NamedElementChain$Node;->this$0:Lorg/apache/hc/core5/http/config/NamedElementChain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/hc/core5/http/config/NamedElementChain$Node;->name:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/hc/core5/http/config/NamedElementChain$Node;->value:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/hc/core5/http/config/NamedElementChain$Node;)Lorg/apache/hc/core5/http/config/NamedElementChain$Node;
    .locals 0

    iget-object p0, p0, Lorg/apache/hc/core5/http/config/NamedElementChain$Node;->previous:Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    return-object p0
.end method

.method public static synthetic access$002(Lorg/apache/hc/core5/http/config/NamedElementChain$Node;Lorg/apache/hc/core5/http/config/NamedElementChain$Node;)Lorg/apache/hc/core5/http/config/NamedElementChain$Node;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/config/NamedElementChain$Node;->previous:Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    return-object p1
.end method

.method public static synthetic access$100(Lorg/apache/hc/core5/http/config/NamedElementChain$Node;)Lorg/apache/hc/core5/http/config/NamedElementChain$Node;
    .locals 0

    iget-object p0, p0, Lorg/apache/hc/core5/http/config/NamedElementChain$Node;->next:Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    return-object p0
.end method

.method public static synthetic access$102(Lorg/apache/hc/core5/http/config/NamedElementChain$Node;Lorg/apache/hc/core5/http/config/NamedElementChain$Node;)Lorg/apache/hc/core5/http/config/NamedElementChain$Node;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/config/NamedElementChain$Node;->next:Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    return-object p1
.end method

.method public static synthetic access$200(Lorg/apache/hc/core5/http/config/NamedElementChain$Node;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/hc/core5/http/config/NamedElementChain$Node;->name:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$302(Lorg/apache/hc/core5/http/config/NamedElementChain$Node;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/config/NamedElementChain$Node;->value:Ljava/lang/Object;

    return-object p1
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/config/NamedElementChain$Node;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNext()Lorg/apache/hc/core5/http/config/NamedElementChain$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/hc/core5/http/config/NamedElementChain<",
            "TE;>.Node;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/http/config/NamedElementChain$Node;->next:Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    iget-object v1, p0, Lorg/apache/hc/core5/http/config/NamedElementChain$Node;->this$0:Lorg/apache/hc/core5/http/config/NamedElementChain;

    invoke-static {v1}, Lorg/apache/hc/core5/http/config/NamedElementChain;->access$400(Lorg/apache/hc/core5/http/config/NamedElementChain;)Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/config/NamedElementChain$Node;->next:Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrevious()Lorg/apache/hc/core5/http/config/NamedElementChain$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/hc/core5/http/config/NamedElementChain<",
            "TE;>.Node;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/http/config/NamedElementChain$Node;->previous:Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    iget-object v1, p0, Lorg/apache/hc/core5/http/config/NamedElementChain$Node;->this$0:Lorg/apache/hc/core5/http/config/NamedElementChain;

    invoke-static {v1}, Lorg/apache/hc/core5/http/config/NamedElementChain;->access$400(Lorg/apache/hc/core5/http/config/NamedElementChain;)Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/config/NamedElementChain$Node;->previous:Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/http/config/NamedElementChain$Node;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/hc/core5/http/config/NamedElementChain$Node;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/core5/http/config/NamedElementChain$Node;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
