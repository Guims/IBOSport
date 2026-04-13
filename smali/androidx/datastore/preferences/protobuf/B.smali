.class public final Landroidx/datastore/preferences/protobuf/B;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/Object;J)Landroidx/datastore/preferences/protobuf/w;
    .locals 2

    sget-object v0, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/datastore/preferences/protobuf/h0;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/w;

    move-object v1, v0

    check-cast v1, Landroidx/datastore/preferences/protobuf/b;

    iget-boolean v1, v1, Landroidx/datastore/preferences/protobuf/b;->b:Z

    if-nez v1, :cond_1

    check-cast v0, Landroidx/datastore/preferences/protobuf/T;

    iget v1, v0, Landroidx/datastore/preferences/protobuf/T;->r:I

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v1, 0x2

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/T;->d(I)Landroidx/datastore/preferences/protobuf/T;

    move-result-object v0

    invoke-static {p1, p2, p0, v0}, Landroidx/datastore/preferences/protobuf/i0;->o(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method
