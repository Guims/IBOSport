.class public final Lorg/apache/hc/client5/http/psl/PublicSuffixList;
.super Ljava/lang/Object;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->IMMUTABLE:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# instance fields
.field private final exceptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final rules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Lorg/apache/hc/client5/http/psl/DomainType;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lorg/apache/hc/client5/http/psl/DomainType;->UNKNOWN:Lorg/apache/hc/client5/http/psl/DomainType;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/hc/client5/http/psl/PublicSuffixList;-><init>(Lorg/apache/hc/client5/http/psl/DomainType;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/client5/http/psl/DomainType;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/client5/http/psl/DomainType;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Domain type"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/client5/http/psl/DomainType;

    iput-object p1, p0, Lorg/apache/hc/client5/http/psl/PublicSuffixList;->type:Lorg/apache/hc/client5/http/psl/DomainType;

    const-string p1, "Domain suffix rules"

    invoke-static {p2, p1}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/psl/PublicSuffixList;->rules:Ljava/util/List;

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    sget-object p3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_0
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/psl/PublicSuffixList;->exceptions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getExceptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/client5/http/psl/PublicSuffixList;->exceptions:Ljava/util/List;

    return-object v0
.end method

.method public getRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/client5/http/psl/PublicSuffixList;->rules:Ljava/util/List;

    return-object v0
.end method

.method public getType()Lorg/apache/hc/client5/http/psl/DomainType;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/psl/PublicSuffixList;->type:Lorg/apache/hc/client5/http/psl/DomainType;

    return-object v0
.end method
