.class public Lio/realm/internal/OsObject;
.super Ljava/lang/Object;

# interfaces
.implements Lio/realm/internal/h;


# annotations
.annotation build Lio/realm/internal/Keep;
.end annotation


# static fields
.field private static final nativeFinalizerPtr:J


# instance fields
.field private final nativePtr:J

.field private observerPairs:Lio/realm/internal/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/internal/o;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lio/realm/internal/OsObject;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/OsObject;->nativeFinalizerPtr:J

    return-void
.end method

.method public constructor <init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/UncheckedRow;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/realm/internal/o;

    invoke-direct {v0}, Lio/realm/internal/o;-><init>()V

    iput-object v0, p0, Lio/realm/internal/OsObject;->observerPairs:Lio/realm/internal/o;

    invoke-virtual {p1}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v0

    iget-wide v2, p2, Lio/realm/internal/UncheckedRow;->r:J

    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/OsObject;->nativeCreate(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/internal/OsObject;->nativePtr:J

    iget-object p1, p1, Lio/realm/internal/OsSharedRealm;->context:Lio/realm/internal/g;

    invoke-virtual {p1, p0}, Lio/realm/internal/g;->a(Lio/realm/internal/h;)V

    return-void
.end method

.method public static create(Lio/realm/internal/Table;)Lio/realm/internal/UncheckedRow;
    .locals 4

    iget-object v0, p0, Lio/realm/internal/Table;->r:Lio/realm/internal/OsSharedRealm;

    new-instance v1, Lio/realm/internal/UncheckedRow;

    iget-object v0, v0, Lio/realm/internal/OsSharedRealm;->context:Lio/realm/internal/g;

    iget-wide v2, p0, Lio/realm/internal/Table;->b:J

    invoke-static {v2, v3}, Lio/realm/internal/OsObject;->nativeCreateNewObject(J)J

    move-result-wide v2

    invoke-direct {v1, v0, p0, v2, v3}, Lio/realm/internal/UncheckedRow;-><init>(Lio/realm/internal/g;Lio/realm/internal/Table;J)V

    return-object v1
.end method

.method public static createEmbeddedObject(Lio/realm/internal/Table;JJ)J
    .locals 6

    iget-wide v0, p0, Lio/realm/internal/Table;->b:J

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lio/realm/internal/OsObject;->nativeCreateEmbeddedObject(JJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static createRow(Lio/realm/internal/Table;)J
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/Table;->b:J

    invoke-static {v0, v1}, Lio/realm/internal/OsObject;->nativeCreateRow(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J
    .locals 9

    invoke-virtual {p0, p1, p2}, Lio/realm/internal/Table;->i(J)Lio/realm/RealmFieldType;

    move-result-object v0

    iget-object v1, p0, Lio/realm/internal/Table;->r:Lio/realm/internal/OsSharedRealm;

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-ne v0, v2, :cond_2

    if-eqz p3, :cond_1

    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Primary key value is not a String: "

    invoke-static {p3, p1}, LB/f;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {v1}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v0

    iget-wide v2, p0, Lio/realm/internal/Table;->b:J

    move-object v6, p3

    check-cast v6, Ljava/lang/String;

    move-wide v4, p1

    invoke-static/range {v0 .. v6}, Lio/realm/internal/OsObject;->nativeCreateRowWithStringPrimaryKey(JJJLjava/lang/String;)J

    move-result-wide p0

    return-wide p0

    :cond_2
    move-wide v4, p1

    sget-object p1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-ne v0, p1, :cond_5

    if-nez p3, :cond_3

    const-wide/16 p1, 0x0

    :goto_1
    move-wide v6, p1

    goto :goto_2

    :cond_3
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    goto :goto_1

    :goto_2
    invoke-virtual {v1}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v0

    iget-wide v2, p0, Lio/realm/internal/Table;->b:J

    if-nez p3, :cond_4

    const/4 p0, 0x1

    :goto_3
    move v8, p0

    goto :goto_4

    :cond_4
    const/4 p0, 0x0

    goto :goto_3

    :goto_4
    invoke-static/range {v0 .. v8}, Lio/realm/internal/OsObject;->nativeCreateRowWithLongPrimaryKey(JJJJZ)J

    move-result-wide p0

    return-wide p0

    :cond_5
    sget-object p1, Lio/realm/RealmFieldType;->OBJECT_ID:Lio/realm/RealmFieldType;

    const/4 p2, 0x0

    if-ne v0, p1, :cond_9

    if-eqz p3, :cond_7

    instance-of p1, p3, Lorg/bson/types/ObjectId;

    if-eqz p1, :cond_6

    goto :goto_5

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Primary key value is not an ObjectId: "

    invoke-static {p3, p1}, LB/f;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_5
    if-nez p3, :cond_8

    :goto_6
    move-object v6, p2

    goto :goto_7

    :cond_8
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_6

    :goto_7
    invoke-virtual {v1}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v0

    iget-wide v2, p0, Lio/realm/internal/Table;->b:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/OsObject;->nativeCreateRowWithObjectIdPrimaryKey(JJJLjava/lang/String;)J

    move-result-wide p0

    return-wide p0

    :cond_9
    sget-object p1, Lio/realm/RealmFieldType;->UUID:Lio/realm/RealmFieldType;

    if-ne v0, p1, :cond_d

    if-eqz p3, :cond_b

    instance-of p1, p3, Ljava/util/UUID;

    if-eqz p1, :cond_a

    goto :goto_8

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Primary key value is not an UUID: "

    invoke-static {p3, p1}, LB/f;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    :goto_8
    if-nez p3, :cond_c

    :goto_9
    move-object v6, p2

    goto :goto_a

    :cond_c
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_9

    :goto_a
    invoke-virtual {v1}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v0

    iget-wide v2, p0, Lio/realm/internal/Table;->b:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/OsObject;->nativeCreateRowWithUUIDPrimaryKey(JJJLjava/lang/String;)J

    move-result-wide p0

    return-wide p0

    :cond_d
    new-instance p0, Lio/realm/exceptions/RealmException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Cannot check for duplicate rows for unsupported primary key type: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createWithPrimaryKey(Lio/realm/internal/Table;Ljava/lang/Object;)Lio/realm/internal/UncheckedRow;
    .locals 11

    invoke-static {p0}, Lio/realm/internal/OsObject;->getAndVerifyPrimaryKeyColumnIndex(Lio/realm/internal/Table;)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lio/realm/internal/Table;->i(J)Lio/realm/RealmFieldType;

    move-result-object v0

    iget-object v1, p0, Lio/realm/internal/Table;->r:Lio/realm/internal/OsSharedRealm;

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-ne v0, v2, :cond_2

    if-eqz p1, :cond_1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Primary key value is not a String: "

    invoke-static {p1, v0}, LB/f;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance v7, Lio/realm/internal/UncheckedRow;

    iget-object v8, v1, Lio/realm/internal/OsSharedRealm;->context:Lio/realm/internal/g;

    invoke-virtual {v1}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v0

    iget-wide v2, p0, Lio/realm/internal/Table;->b:J

    move-object v6, p1

    check-cast v6, Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lio/realm/internal/OsObject;->nativeCreateNewObjectWithStringPrimaryKey(JJJLjava/lang/String;)J

    move-result-wide v0

    invoke-direct {v7, v8, p0, v0, v1}, Lio/realm/internal/UncheckedRow;-><init>(Lio/realm/internal/g;Lio/realm/internal/Table;J)V

    return-object v7

    :cond_2
    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-ne v0, v2, :cond_5

    if-nez p1, :cond_3

    const-wide/16 v2, 0x0

    :goto_1
    move-wide v6, v2

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_1

    :goto_2
    new-instance v9, Lio/realm/internal/UncheckedRow;

    iget-object v10, v1, Lio/realm/internal/OsSharedRealm;->context:Lio/realm/internal/g;

    invoke-virtual {v1}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v0

    iget-wide v2, p0, Lio/realm/internal/Table;->b:J

    if-nez p1, :cond_4

    const/4 p1, 0x1

    :goto_3
    move v8, p1

    goto :goto_4

    :cond_4
    const/4 p1, 0x0

    goto :goto_3

    :goto_4
    invoke-static/range {v0 .. v8}, Lio/realm/internal/OsObject;->nativeCreateNewObjectWithLongPrimaryKey(JJJJZ)J

    move-result-wide v0

    invoke-direct {v9, v10, p0, v0, v1}, Lio/realm/internal/UncheckedRow;-><init>(Lio/realm/internal/g;Lio/realm/internal/Table;J)V

    return-object v9

    :cond_5
    sget-object v2, Lio/realm/RealmFieldType;->OBJECT_ID:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_7

    if-nez p1, :cond_6

    :goto_5
    move-object v6, v3

    goto :goto_6

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :goto_6
    new-instance p1, Lio/realm/internal/UncheckedRow;

    iget-object v7, v1, Lio/realm/internal/OsSharedRealm;->context:Lio/realm/internal/g;

    invoke-virtual {v1}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v0

    iget-wide v2, p0, Lio/realm/internal/Table;->b:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/OsObject;->nativeCreateNewObjectWithObjectIdPrimaryKey(JJJLjava/lang/String;)J

    move-result-wide v0

    invoke-direct {p1, v7, p0, v0, v1}, Lio/realm/internal/UncheckedRow;-><init>(Lio/realm/internal/g;Lio/realm/internal/Table;J)V

    return-object p1

    :cond_7
    sget-object v2, Lio/realm/RealmFieldType;->UUID:Lio/realm/RealmFieldType;

    if-ne v0, v2, :cond_9

    if-nez p1, :cond_8

    :goto_7
    move-object v6, v3

    goto :goto_8

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :goto_8
    new-instance p1, Lio/realm/internal/UncheckedRow;

    iget-object v7, v1, Lio/realm/internal/OsSharedRealm;->context:Lio/realm/internal/g;

    invoke-virtual {v1}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v0

    iget-wide v2, p0, Lio/realm/internal/Table;->b:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/OsObject;->nativeCreateNewObjectWithUUIDPrimaryKey(JJJLjava/lang/String;)J

    move-result-wide v0

    invoke-direct {p1, v7, p0, v0, v1}, Lio/realm/internal/UncheckedRow;-><init>(Lio/realm/internal/g;Lio/realm/internal/Table;J)V

    return-object p1

    :cond_9
    new-instance p0, Lio/realm/exceptions/RealmException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Cannot check for duplicate rows for unsupported primary key type: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getAndVerifyPrimaryKeyColumnIndex(Lio/realm/internal/Table;)J
    .locals 2

    iget-object v0, p0, Lio/realm/internal/Table;->r:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {p0}, Lio/realm/internal/Table;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/realm/internal/OsObjectStore;->a(Lio/realm/internal/OsSharedRealm;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lio/realm/internal/Table;->f(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/realm/internal/Table;->k()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " has no primary key defined."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native nativeCreate(JJ)J
.end method

.method private static native nativeCreateEmbeddedObject(JJJ)J
.end method

.method private static native nativeCreateNewObject(J)J
.end method

.method private static native nativeCreateNewObjectWithLongPrimaryKey(JJJJZ)J
.end method

.method private static native nativeCreateNewObjectWithObjectIdPrimaryKey(JJJLjava/lang/String;)J
.end method

.method private static native nativeCreateNewObjectWithStringPrimaryKey(JJJLjava/lang/String;)J
.end method

.method private static native nativeCreateNewObjectWithUUIDPrimaryKey(JJJLjava/lang/String;)J
.end method

.method private static native nativeCreateRow(J)J
.end method

.method private static native nativeCreateRowWithLongPrimaryKey(JJJJZ)J
.end method

.method private static native nativeCreateRowWithObjectIdPrimaryKey(JJJLjava/lang/String;)J
.end method

.method private static native nativeCreateRowWithStringPrimaryKey(JJJLjava/lang/String;)J
.end method

.method private static native nativeCreateRowWithUUIDPrimaryKey(JJJLjava/lang/String;)J
.end method

.method private static native nativeGetFinalizerPtr()J
.end method

.method private native nativeStartListening(J)V
.end method

.method private native nativeStopListening(J)V
.end method

.method private notifyChangeListeners([Ljava/lang/String;)V
    .locals 5

    iget-object p1, p0, Lio/realm/internal/OsObject;->observerPairs:Lio/realm/internal/o;

    iget-object v0, p1, Lio/realm/internal/o;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/internal/n;

    iget-boolean v3, p1, Lio/realm/internal/o;->b:Z

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, v2, Lio/realm/internal/n;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-boolean v4, v2, Lio/realm/internal/n;->c:Z

    if-nez v4, :cond_0

    check-cast v2, Lio/realm/internal/p;

    check-cast v3, Lio/realm/M;

    iget-object v2, v2, Lio/realm/internal/n;->b:Ljava/lang/Object;

    check-cast v2, Lio/realm/P;

    check-cast v2, Lio/realm/u;

    iget-object v2, v2, Lio/realm/u;->a:Lio/realm/H;

    invoke-interface {v2, v3}, Lio/realm/H;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public addListener(Lio/realm/M;Lio/realm/P;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/realm/M;",
            ">(TT;",
            "Lio/realm/P;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/internal/OsObject;->observerPairs:Lio/realm/internal/o;

    iget-object v0, v0, Lio/realm/internal/o;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lio/realm/internal/OsObject;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/OsObject;->nativeStartListening(J)V

    :cond_0
    new-instance v0, Lio/realm/internal/p;

    invoke-direct {v0, p1, p2}, Lio/realm/internal/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lio/realm/internal/OsObject;->observerPairs:Lio/realm/internal/o;

    invoke-virtual {p1, v0}, Lio/realm/internal/o;->a(Lio/realm/internal/n;)V

    return-void
.end method

.method public getNativeFinalizerPtr()J
    .locals 2

    sget-wide v0, Lio/realm/internal/OsObject;->nativeFinalizerPtr:J

    return-wide v0
.end method

.method public getNativePtr()J
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/OsObject;->nativePtr:J

    return-wide v0
.end method

.method public removeListener(Lio/realm/M;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/realm/M;",
            ">(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/internal/OsObject;->observerPairs:Lio/realm/internal/o;

    invoke-virtual {v0, p1}, Lio/realm/internal/o;->d(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/realm/internal/OsObject;->observerPairs:Lio/realm/internal/o;

    iget-object p1, p1, Lio/realm/internal/o;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lio/realm/internal/OsObject;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/OsObject;->nativeStopListening(J)V

    :cond_0
    return-void
.end method

.method public removeListener(Lio/realm/M;Lio/realm/P;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/realm/M;",
            ">(TT;",
            "Lio/realm/P;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/internal/OsObject;->observerPairs:Lio/realm/internal/o;

    invoke-virtual {v0, p1, p2}, Lio/realm/internal/o;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lio/realm/internal/OsObject;->observerPairs:Lio/realm/internal/o;

    iget-object p1, p1, Lio/realm/internal/o;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-wide p1, p0, Lio/realm/internal/OsObject;->nativePtr:J

    invoke-direct {p0, p1, p2}, Lio/realm/internal/OsObject;->nativeStopListening(J)V

    :cond_0
    return-void
.end method

.method public setObserverPairs(Lio/realm/internal/o;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/internal/o;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/internal/OsObject;->observerPairs:Lio/realm/internal/o;

    iget-object v0, v0, Lio/realm/internal/o;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lio/realm/internal/OsObject;->observerPairs:Lio/realm/internal/o;

    iget-object p1, p1, Lio/realm/internal/o;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-wide v0, p0, Lio/realm/internal/OsObject;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/OsObject;->nativeStartListening(J)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "\'observerPairs\' is not empty. Listeners have been added before."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
