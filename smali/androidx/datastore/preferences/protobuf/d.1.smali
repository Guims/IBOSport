.class public final Landroidx/datastore/preferences/protobuf/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final synthetic b:I

.field public q:I

.field public final r:I

.field public final synthetic s:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/datastore/preferences/protobuf/g;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/d;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/d;->s:Ljava/lang/Object;

    iput v0, p0, Landroidx/datastore/preferences/protobuf/d;->q:I

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/g;->size()I

    move-result p1

    iput p1, p0, Landroidx/datastore/preferences/protobuf/d;->r:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/Y0;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/datastore/preferences/protobuf/d;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/d;->s:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/d;->q:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/Y0;->d()I

    move-result p1

    iput p1, p0, Landroidx/datastore/preferences/protobuf/d;->r:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Landroidx/datastore/preferences/protobuf/d;->b:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Landroidx/datastore/preferences/protobuf/d;->q:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/d;->r:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget v0, p0, Landroidx/datastore/preferences/protobuf/d;->q:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/d;->r:I

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Landroidx/datastore/preferences/protobuf/d;->b:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Landroidx/datastore/preferences/protobuf/d;->q:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/d;->r:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/datastore/preferences/protobuf/d;->q:I

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/d;->s:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/play_billing/Y0;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/play_billing/Y0;->c(I)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :pswitch_0
    iget v0, p0, Landroidx/datastore/preferences/protobuf/d;->q:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/d;->r:I

    if-ge v0, v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/datastore/preferences/protobuf/d;->q:I

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/d;->s:Ljava/lang/Object;

    check-cast v1, Landroidx/datastore/preferences/protobuf/g;

    invoke-virtual {v1, v0}, Landroidx/datastore/preferences/protobuf/g;->g(I)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 1

    iget v0, p0, Landroidx/datastore/preferences/protobuf/d;->b:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
