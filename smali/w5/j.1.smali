.class public final Lw5/j;
.super Ljava/lang/Object;


# static fields
.field public static final e:Lw5/j;

.field public static final f:Lw5/j;


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:[Ljava/lang/String;

.field public final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    sget-object v0, Lw5/i;->q:Lw5/i;

    sget-object v1, Lw5/i;->r:Lw5/i;

    sget-object v2, Lw5/i;->s:Lw5/i;

    sget-object v3, Lw5/i;->k:Lw5/i;

    sget-object v4, Lw5/i;->m:Lw5/i;

    sget-object v5, Lw5/i;->l:Lw5/i;

    sget-object v6, Lw5/i;->n:Lw5/i;

    sget-object v7, Lw5/i;->p:Lw5/i;

    sget-object v8, Lw5/i;->o:Lw5/i;

    filled-new-array/range {v0 .. v8}, [Lw5/i;

    move-result-object v9

    sget-object v10, Lw5/i;->i:Lw5/i;

    sget-object v11, Lw5/i;->j:Lw5/i;

    sget-object v12, Lw5/i;->g:Lw5/i;

    sget-object v13, Lw5/i;->h:Lw5/i;

    sget-object v14, Lw5/i;->e:Lw5/i;

    sget-object v15, Lw5/i;->f:Lw5/i;

    sget-object v16, Lw5/i;->d:Lw5/i;

    move-object/from16 v17, v1

    move-object v1, v0

    move-object v0, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object/from16 v2, v17

    filled-new-array/range {v1 .. v16}, [Lw5/i;

    move-result-object v1

    new-instance v2, Lk/O0;

    invoke-direct {v2}, Lk/O0;-><init>()V

    const/16 v3, 0x9

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lw5/i;

    invoke-virtual {v2, v0}, Lk/O0;->c([Lw5/i;)V

    sget-object v0, Lw5/M;->q:Lw5/M;

    sget-object v3, Lw5/M;->r:Lw5/M;

    filled-new-array {v0, v3}, [Lw5/M;

    move-result-object v4

    invoke-virtual {v2, v4}, Lk/O0;->e([Lw5/M;)V

    const/4 v4, 0x1

    iput-boolean v4, v2, Lk/O0;->b:Z

    invoke-virtual {v2}, Lk/O0;->a()Lw5/j;

    new-instance v2, Lk/O0;

    invoke-direct {v2}, Lk/O0;-><init>()V

    const/16 v5, 0x10

    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lw5/i;

    invoke-virtual {v2, v6}, Lk/O0;->c([Lw5/i;)V

    filled-new-array {v0, v3}, [Lw5/M;

    move-result-object v6

    invoke-virtual {v2, v6}, Lk/O0;->e([Lw5/M;)V

    iput-boolean v4, v2, Lk/O0;->b:Z

    invoke-virtual {v2}, Lk/O0;->a()Lw5/j;

    move-result-object v2

    sput-object v2, Lw5/j;->e:Lw5/j;

    new-instance v2, Lk/O0;

    invoke-direct {v2}, Lk/O0;-><init>()V

    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lw5/i;

    invoke-virtual {v2, v1}, Lk/O0;->c([Lw5/i;)V

    sget-object v1, Lw5/M;->s:Lw5/M;

    sget-object v5, Lw5/M;->t:Lw5/M;

    filled-new-array {v0, v3, v1, v5}, [Lw5/M;

    move-result-object v0

    invoke-virtual {v2, v0}, Lk/O0;->e([Lw5/M;)V

    iput-boolean v4, v2, Lk/O0;->b:Z

    invoke-virtual {v2}, Lk/O0;->a()Lw5/j;

    new-instance v0, Lw5/j;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2, v2}, Lw5/j;-><init>(ZZ[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lw5/j;->f:Lw5/j;

    return-void
.end method

.method public constructor <init>(ZZ[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lw5/j;->a:Z

    iput-boolean p2, p0, Lw5/j;->b:Z

    iput-object p3, p0, Lw5/j;->c:[Ljava/lang/String;

    iput-object p4, p0, Lw5/j;->d:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 6

    iget-object v0, p0, Lw5/j;->c:[Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    sget-object v5, Lw5/i;->t:Lw5/b;

    invoke-virtual {v5, v4}, Lw5/b;->d(Ljava/lang/String;)Lw5/i;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, LT4/g;->E(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Ljavax/net/ssl/SSLSocket;)Z
    .locals 3

    iget-boolean v0, p0, Lw5/j;->a:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lw5/j;->d:[Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    sget-object v2, LU4/a;->q:LU4/a;

    invoke-static {v0, v1, v2}, Lx5/b;->h([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lw5/j;->c:[Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lw5/i;->b:Lw5/h;

    invoke-static {v0, p1, v1}, Lx5/b;->h([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)Z

    move-result p1

    if-nez p1, :cond_2

    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final c()Ljava/util/List;
    .locals 5

    iget-object v0, p0, Lw5/j;->d:[Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    invoke-static {v4}, La/a;->j(Ljava/lang/String;)Lw5/M;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, LT4/g;->E(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lw5/j;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, p0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lw5/j;

    iget-boolean v0, p1, Lw5/j;->a:Z

    iget-boolean v1, p0, Lw5/j;->a:Z

    if-eq v1, v0, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_5

    iget-object v0, p0, Lw5/j;->c:[Ljava/lang/String;

    iget-object v1, p1, Lw5/j;->c:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lw5/j;->d:[Ljava/lang/String;

    iget-object v1, p1, Lw5/j;->d:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lw5/j;->b:Z

    iget-boolean p1, p1, Lw5/j;->b:Z

    if-eq v0, p1, :cond_5

    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_5
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lw5/j;->a:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iget-object v1, p0, Lw5/j;->c:[Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const/16 v2, 0x20f

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget-object v1, p0, Lw5/j;->d:[Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    :cond_1
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-boolean v0, p0, Lw5/j;->b:Z

    xor-int/lit8 v0, v0, 0x1

    add-int/2addr v2, v0

    return v2

    :cond_2
    const/16 v0, 0x11

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lw5/j;->a:Z

    if-nez v0, :cond_0

    const-string v0, "ConnectionSpec()"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConnectionSpec(cipherSuites="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lw5/j;->a()Ljava/util/List;

    move-result-object v1

    const-string v2, "[all enabled]"

    invoke-static {v1, v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tlsVersions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lw5/j;->c()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", supportsTlsExtensions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lw5/j;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
