.class public Lio/realm/internal/CheckedRow;
.super Lio/realm/internal/UncheckedRow;


# static fields
.field public static final synthetic u:I


# virtual methods
.method public final B(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;
    .locals 3

    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->q:Lio/realm/internal/Table;

    invoke-virtual {v0, p1, p2}, Lio/realm/internal/Table;->i(J)Lio/realm/RealmFieldType;

    move-result-object v1

    if-ne p3, v1, :cond_0

    new-instance p3, Lio/realm/internal/OsList;

    invoke-direct {p3, p0, p1, p2}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    return-object p3

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, p1, p2}, Lio/realm/internal/Table;->g(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "The type of field \'%1$s\' is not \'RealmFieldType.%2$s\'."

    invoke-static {v2, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final C(JLio/realm/RealmFieldType;)Lio/realm/internal/OsMap;
    .locals 3

    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->q:Lio/realm/internal/Table;

    invoke-virtual {v0, p1, p2}, Lio/realm/internal/Table;->i(J)Lio/realm/RealmFieldType;

    move-result-object v1

    if-ne p3, v1, :cond_0

    new-instance p3, Lio/realm/internal/OsMap;

    invoke-direct {p3, p0, p1, p2}, Lio/realm/internal/OsMap;-><init>(Lio/realm/internal/UncheckedRow;J)V

    return-object p3

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, p1, p2}, Lio/realm/internal/Table;->g(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "The type of field \'%1$s\' is not \'RealmFieldType.%2$s\'."

    invoke-static {v2, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final E(Lio/realm/internal/OsSharedRealm;)Lio/realm/internal/A;
    .locals 6

    invoke-virtual {p0}, Lio/realm/internal/UncheckedRow;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lio/realm/internal/f;->b:Lio/realm/internal/f;

    return-object p1

    :cond_0
    new-instance v0, Lio/realm/internal/CheckedRow;

    iget-object v1, p0, Lio/realm/internal/UncheckedRow;->q:Lio/realm/internal/Table;

    invoke-virtual {v1, p1}, Lio/realm/internal/Table;->c(Lio/realm/internal/OsSharedRealm;)Lio/realm/internal/Table;

    move-result-object v1

    iget-wide v2, p0, Lio/realm/internal/UncheckedRow;->r:J

    invoke-virtual {p1}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v4

    invoke-virtual {p0, v2, v3, v4, v5}, Lio/realm/internal/UncheckedRow;->nativeFreeze(JJ)J

    move-result-wide v2

    iget-object p1, p0, Lio/realm/internal/UncheckedRow;->b:Lio/realm/internal/g;

    invoke-direct {v0, p1, v1, v2, v3}, Lio/realm/internal/UncheckedRow;-><init>(Lio/realm/internal/g;Lio/realm/internal/Table;J)V

    return-object v0
.end method

.method public final f(J)Lio/realm/internal/OsSet;
    .locals 1

    new-instance v0, Lio/realm/internal/OsSet;

    invoke-direct {v0, p0, p1, p2}, Lio/realm/internal/OsSet;-><init>(Lio/realm/internal/UncheckedRow;J)V

    return-object v0
.end method

.method public final l(J)Lio/realm/internal/OsList;
    .locals 3

    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->q:Lio/realm/internal/Table;

    invoke-virtual {v0, p1, p2}, Lio/realm/internal/Table;->i(J)Lio/realm/RealmFieldType;

    move-result-object v1

    sget-object v2, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    if-ne v1, v2, :cond_0

    new-instance v0, Lio/realm/internal/OsList;

    invoke-direct {v0, p0, p1, p2}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, p1, p2}, Lio/realm/internal/Table;->g(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Field \'"

    const-string v0, "\' is not a \'RealmList\'."

    invoke-static {p2, p1, v0}, LB/f;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public native nativeGetBoolean(JJ)Z
.end method

.method public native nativeGetByteArray(JJ)[B
.end method

.method public native nativeGetColumnKey(JLjava/lang/String;)J
.end method

.method public native nativeGetColumnType(JJ)I
.end method

.method public native nativeGetDecimal128(JJ)[J
.end method

.method public native nativeGetDouble(JJ)D
.end method

.method public native nativeGetFloat(JJ)F
.end method

.method public native nativeGetLink(JJ)J
.end method

.method public native nativeGetLong(JJ)J
.end method

.method public native nativeGetObjectId(JJ)Ljava/lang/String;
.end method

.method public native nativeGetString(JJ)Ljava/lang/String;
.end method

.method public native nativeGetTimestamp(JJ)J
.end method

.method public native nativeIsNullLink(JJ)Z
.end method

.method public native nativeNullifyLink(JJ)V
.end method

.method public native nativeSetBoolean(JJZ)V
.end method

.method public native nativeSetByteArray(JJ[B)V
.end method

.method public native nativeSetFloat(JJF)V
.end method

.method public native nativeSetLink(JJJ)V
.end method

.method public native nativeSetLong(JJJ)V
.end method

.method public native nativeSetString(JJLjava/lang/String;)V
.end method

.method public final o(J)Z
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->r:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeIsNull(JJ)Z

    move-result p1

    return p1
.end method

.method public final r(J)Lio/realm/internal/OsMap;
    .locals 3

    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->q:Lio/realm/internal/Table;

    invoke-virtual {v0, p1, p2}, Lio/realm/internal/Table;->i(J)Lio/realm/RealmFieldType;

    move-result-object v1

    sget-object v2, Lio/realm/RealmFieldType;->STRING_TO_LINK_MAP:Lio/realm/RealmFieldType;

    if-ne v1, v2, :cond_0

    new-instance v0, Lio/realm/internal/OsMap;

    invoke-direct {v0, p0, p1, p2}, Lio/realm/internal/OsMap;-><init>(Lio/realm/internal/UncheckedRow;J)V

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, p1, p2}, Lio/realm/internal/Table;->g(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Field \'"

    const-string v0, "\' is not a \'RealmDictionary\'."

    invoke-static {p2, p1, v0}, LB/f;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final s(JLio/realm/RealmFieldType;)Lio/realm/internal/OsSet;
    .locals 3

    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->q:Lio/realm/internal/Table;

    invoke-virtual {v0, p1, p2}, Lio/realm/internal/Table;->i(J)Lio/realm/RealmFieldType;

    move-result-object v1

    if-ne p3, v1, :cond_0

    new-instance p3, Lio/realm/internal/OsSet;

    invoke-direct {p3, p0, p1, p2}, Lio/realm/internal/OsSet;-><init>(Lio/realm/internal/UncheckedRow;J)V

    return-object p3

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, p1, p2}, Lio/realm/internal/Table;->g(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "The type of field \'%1$s\' is not \'RealmFieldType.%2$s\'."

    invoke-static {v2, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final u(J)Z
    .locals 2

    invoke-virtual {p0, p1, p2}, Lio/realm/internal/UncheckedRow;->D(J)Lio/realm/RealmFieldType;

    move-result-object v0

    sget-object v1, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->r:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/CheckedRow;->nativeIsNullLink(JJ)Z

    move-result p1

    return p1
.end method

.method public final v(J)V
    .locals 7

    invoke-virtual {p0, p1, p2}, Lio/realm/internal/UncheckedRow;->D(J)Lio/realm/RealmFieldType;

    move-result-object v0

    sget-object v1, Lio/realm/RealmFieldType;->BINARY:Lio/realm/RealmFieldType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->q:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->a()V

    iget-wide v2, p0, Lio/realm/internal/UncheckedRow;->r:J

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/CheckedRow;->nativeSetByteArray(JJ[B)V

    return-void

    :cond_0
    move-wide v4, p1

    invoke-super {p0, v4, v5}, Lio/realm/internal/UncheckedRow;->v(J)V

    return-void
.end method
