.class public final Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;
.super Ljava/lang/Object;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->SAFE:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# instance fields
.field private final exceptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/hc/client5/http/psl/DomainType;",
            ">;"
        }
    .end annotation
.end field

.field private final rules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/hc/client5/http/psl/DomainType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/hc/client5/http/psl/PublicSuffixList;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Domain suffix lists"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;->rules:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;->exceptions:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/client5/http/psl/PublicSuffixList;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/psl/PublicSuffixList;->getType()Lorg/apache/hc/client5/http/psl/DomainType;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/psl/PublicSuffixList;->getRules()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;->rules:Ljava/util/Map;

    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/apache/hc/client5/http/psl/PublicSuffixList;->getExceptions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;->exceptions:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lorg/apache/hc/client5/http/psl/DomainType;->UNKNOWN:Lorg/apache/hc/client5/http/psl/DomainType;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;-><init>(Lorg/apache/hc/client5/http/psl/DomainType;Ljava/util/Collection;Ljava/util/Collection;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/client5/http/psl/DomainType;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/client5/http/psl/DomainType;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Domain type"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Domain suffix rules"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;->rules:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;->rules:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;->exceptions:Ljava/util/Map;

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;->exceptions:Ljava/util/Map;

    invoke-interface {v0, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-void
.end method

.method private static findEntry(Ljava/util/Map;Ljava/lang/String;)Lorg/apache/hc/client5/http/psl/DomainType;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/hc/client5/http/psl/DomainType;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/hc/client5/http/psl/DomainType;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/hc/client5/http/psl/DomainType;

    return-object p0
.end method

.method private static match(Lorg/apache/hc/client5/http/psl/DomainType;Lorg/apache/hc/client5/http/psl/DomainType;)Z
    .locals 0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getDomainRoot(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;->getDomainRoot(Ljava/lang/String;Lorg/apache/hc/client5/http/psl/DomainType;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDomainRoot(Ljava/lang/String;Lorg/apache/hc/client5/http/psl/DomainType;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    invoke-static {p1}, Lorg/apache/hc/client5/http/utils/DnsUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v1, v0

    :goto_0
    if-eqz p1, :cond_6

    invoke-static {p1}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;->exceptions:Ljava/util/Map;

    invoke-static {v3, v2}, Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;->findEntry(Ljava/util/Map;Ljava/lang/String;)Lorg/apache/hc/client5/http/psl/DomainType;

    move-result-object v3

    invoke-static {v3, p2}, Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;->match(Lorg/apache/hc/client5/http/psl/DomainType;Lorg/apache/hc/client5/http/psl/DomainType;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;->rules:Ljava/util/Map;

    invoke-static {v3, v2}, Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;->findEntry(Ljava/util/Map;Ljava/lang/String;)Lorg/apache/hc/client5/http/psl/DomainType;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;->match(Lorg/apache/hc/client5/http/psl/DomainType;Lorg/apache/hc/client5/http/psl/DomainType;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object p2, Lorg/apache/hc/client5/http/psl/DomainType;->PRIVATE:Lorg/apache/hc/client5/http/psl/DomainType;

    if-ne v2, p2, :cond_8

    goto :goto_2

    :cond_3
    const/16 v2, 0x2e

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_5

    iget-object v3, p0, Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;->rules:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "*."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;->findEntry(Ljava/util/Map;Ljava/lang/String;)Lorg/apache/hc/client5/http/psl/DomainType;

    move-result-object v3

    invoke-static {v3, p2}, Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;->match(Lorg/apache/hc/client5/http/psl/DomainType;Lorg/apache/hc/client5/http/psl/DomainType;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object p2, Lorg/apache/hc/client5/http/psl/DomainType;->PRIVATE:Lorg/apache/hc/client5/http/psl/DomainType;

    if-ne v3, p2, :cond_8

    :goto_2
    return-object p1

    :cond_5
    move-object v1, p1

    move-object p1, v2

    goto :goto_0

    :cond_6
    if-eqz p2, :cond_8

    sget-object p1, Lorg/apache/hc/client5/http/psl/DomainType;->UNKNOWN:Lorg/apache/hc/client5/http/psl/DomainType;

    if-ne p2, p1, :cond_7

    goto :goto_3

    :cond_7
    return-object v0

    :cond_8
    :goto_3
    return-object v1
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;->matches(Ljava/lang/String;Lorg/apache/hc/client5/http/psl/DomainType;)Z

    move-result p1

    return p1
.end method

.method public matches(Ljava/lang/String;Lorg/apache/hc/client5/http/psl/DomainType;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;->getDomainRoot(Ljava/lang/String;Lorg/apache/hc/client5/http/psl/DomainType;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method
