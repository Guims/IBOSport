.class public final Lx2/h;
.super Ly2/a;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lx2/h;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:I

.field public q:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lv2/h;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lv2/h;-><init>(I)V

    sput-object v0, Lx2/h;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lx2/h;->b:I

    iput-object p2, p0, Lx2/h;->q:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 8

    const/16 p2, 0x4f45

    invoke-static {p1, p2}, LE2/g;->O(Landroid/os/Parcel;I)I

    move-result p2

    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, LE2/g;->R(Landroid/os/Parcel;II)V

    iget v0, p0, Lx2/h;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lx2/h;->q:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x2

    invoke-static {p1, v1}, LE2/g;->O(Landroid/os/Parcel;I)I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Parcelable;

    if-nez v5, :cond_1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    invoke-interface {v5, p1, v3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int v6, v5, v7

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p1, v1}, LE2/g;->Q(Landroid/os/Parcel;I)V

    :goto_2
    invoke-static {p1, p2}, LE2/g;->Q(Landroid/os/Parcel;I)V

    return-void
.end method
