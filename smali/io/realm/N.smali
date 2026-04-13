.class public Lio/realm/N;
.super Lio/realm/B;


# instance fields
.field public final b:Lio/realm/M;


# direct methods
.method public constructor <init>(Lio/realm/M;)V
    .locals 1

    sget-object v0, Lio/realm/z;->q:Lio/realm/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/realm/N;->b:Lio/realm/M;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lio/realm/d;Lio/realm/internal/core/NativeRealmAny;Ljava/lang/Class;)V
    .locals 5

    sget-object v0, Lio/realm/z;->q:Lio/realm/z;

    invoke-direct {p0, p2}, Lio/realm/B;-><init>(Lio/realm/internal/core/NativeRealmAny;)V

    invoke-virtual {p2}, Lio/realm/internal/core/NativeRealmAny;->getRealmModelRowKey()J

    move-result-wide v0

    sget-object p2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lio/realm/d;->x()Lio/realm/k;

    move-result-object p2

    invoke-virtual {p2, p3}, Lio/realm/k;->b(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object p2

    iget-object v2, p2, Lio/realm/internal/Table;->q:Lio/realm/internal/g;

    sget v3, Lio/realm/internal/UncheckedRow;->t:I

    iget-wide v3, p2, Lio/realm/internal/Table;->b:J

    invoke-virtual {p2, v3, v4, v0, v1}, Lio/realm/internal/Table;->nativeGetRowPtr(JJ)J

    move-result-wide v0

    new-instance v3, Lio/realm/internal/UncheckedRow;

    invoke-direct {v3, v2, p2, v0, v1}, Lio/realm/internal/UncheckedRow;-><init>(Lio/realm/internal/g;Lio/realm/internal/Table;J)V

    iget-object p2, p1, Lio/realm/d;->r:Lio/realm/J;

    iget-object p2, p2, Lio/realm/J;->g:Lio/realm/internal/z;

    invoke-virtual {p1}, Lio/realm/d;->x()Lio/realm/k;

    move-result-object v0

    invoke-virtual {v0, p3}, Lio/realm/k;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v0

    invoke-virtual {p2, p3, p1, v3, v0}, Lio/realm/internal/z;->k(Ljava/lang/Class;Ljava/lang/Object;Lio/realm/internal/A;Lio/realm/internal/c;)Lio/realm/M;

    move-result-object p1

    iput-object p1, p0, Lio/realm/N;->b:Lio/realm/M;

    return-void
.end method


# virtual methods
.method public final a()Lio/realm/internal/core/NativeRealmAny;
    .locals 3

    iget-object v0, p0, Lio/realm/N;->b:Lio/realm/M;

    instance-of v1, v0, Lio/realm/internal/y;

    if-eqz v1, :cond_0

    new-instance v1, Lio/realm/internal/core/NativeRealmAny;

    const-class v2, Lio/realm/internal/y;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/y;

    invoke-direct {v1, v0}, Lio/realm/internal/core/NativeRealmAny;-><init>(Lio/realm/internal/y;)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native RealmAny instances only allow managed Realm objects or primitives"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/realm/N;->b:Lio/realm/M;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lio/realm/N;

    iget-object p1, p1, Lio/realm/N;->b:Lio/realm/M;

    iget-object v1, p0, Lio/realm/N;->b:Lio/realm/M;

    if-nez v1, :cond_2

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0

    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lio/realm/N;->b:Lio/realm/M;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/realm/N;->b:Lio/realm/M;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
