.class public Lio/realm/internal/TableQuery;
.super Ljava/lang/Object;

# interfaces
.implements Lio/realm/internal/h;


# static fields
.field public static final t:J


# instance fields
.field public final b:Lio/realm/internal/Table;

.field public final q:J

.field public final r:LW3/e;

.field public s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lio/realm/internal/TableQuery;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/TableQuery;->t:J

    return-void
.end method

.method public constructor <init>(Lio/realm/internal/g;Lio/realm/internal/Table;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LW3/e;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, LW3/e;-><init>(I)V

    iput-object v0, p0, Lio/realm/internal/TableQuery;->r:LW3/e;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->s:Z

    iput-object p2, p0, Lio/realm/internal/TableQuery;->b:Lio/realm/internal/Table;

    iput-wide p3, p0, Lio/realm/internal/TableQuery;->q:J

    invoke-virtual {p1, p0}, Lio/realm/internal/g;->a(Lio/realm/internal/h;)V

    return-void
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, " "

    const-string v1, "\\ "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private native nativeBeginGroup(J)V
.end method

.method private native nativeEndGroup(J)V
.end method

.method private native nativeFind(J)J
.end method

.method private static native nativeGetFinalizerPtr()J
.end method

.method private native nativeNot(J)V
.end method

.method private native nativeOr(J)V
.end method

.method private native nativeRawDescriptor(JLjava/lang/String;J)V
.end method

.method private native nativeRawPredicate(JLjava/lang/String;[JJ)V
.end method

.method private native nativeValidateQuery(J)Ljava/lang/String;
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/TableQuery;->q:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/TableQuery;->nativeBeginGroup(J)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->s:Z

    return-void
.end method

.method public final b()V
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/TableQuery;->q:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/TableQuery;->nativeEndGroup(J)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->s:Z

    return-void
.end method

.method public final c(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/A;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lio/realm/internal/TableQuery;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " = $0"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p3}, [Lio/realm/A;

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, LW3/e;->p(Lio/realm/internal/TableQuery;Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;[Lio/realm/A;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/realm/internal/TableQuery;->s:Z

    return-void
.end method

.method public final e()J
    .locals 2

    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->j()V

    iget-wide v0, p0, Lio/realm/internal/TableQuery;->q:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/TableQuery;->nativeFind(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final f()V
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/TableQuery;->q:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/TableQuery;->nativeNot(J)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->s:Z

    return-void
.end method

.method public final g()V
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/TableQuery;->q:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/TableQuery;->nativeOr(J)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->s:Z

    return-void
.end method

.method public final getNativeFinalizerPtr()J
    .locals 2

    sget-wide v0, Lio/realm/internal/TableQuery;->t:J

    return-wide v0
.end method

.method public final getNativePtr()J
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/TableQuery;->q:J

    return-wide v0
.end method

.method public final varargs h(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;[J)V
    .locals 9

    if-eqz p1, :cond_0

    iget-wide v0, p1, Lio/realm/internal/objectstore/OsKeyPathMapping;->b:J

    :goto_0
    move-wide v7, v0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :goto_1
    iget-wide v3, p0, Lio/realm/internal/TableQuery;->q:J

    move-object v2, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v8}, Lio/realm/internal/TableQuery;->nativeRawPredicate(JLjava/lang/String;[JJ)V

    return-void
.end method

.method public final i(Lio/realm/internal/objectstore/OsKeyPathMapping;[Ljava/lang/String;[I)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SORT("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    const/4 v2, 0x0

    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_1

    aget-object v3, p2, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lio/realm/internal/TableQuery;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, p3, v2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const-string v1, "ASC"

    goto :goto_1

    :cond_0
    const-string v1, "DESC"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    const-string v1, ", "

    goto :goto_0

    :cond_1
    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_2

    iget-wide p1, p1, Lio/realm/internal/objectstore/OsKeyPathMapping;->b:J

    :goto_2
    move-wide v5, p1

    goto :goto_3

    :cond_2
    const-wide/16 p1, 0x0

    goto :goto_2

    :goto_3
    iget-wide v2, p0, Lio/realm/internal/TableQuery;->q:J

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lio/realm/internal/TableQuery;->nativeRawDescriptor(JLjava/lang/String;J)V

    return-void
.end method

.method public final j()V
    .locals 2

    iget-boolean v0, p0, Lio/realm/internal/TableQuery;->s:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lio/realm/internal/TableQuery;->q:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/TableQuery;->nativeValidateQuery(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->s:Z

    return-void

    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void
.end method
