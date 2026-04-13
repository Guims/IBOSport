.class public final Lx2/e;
.super Ly2/a;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lx2/e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:I

.field public final q:I

.field public final r:I

.field public final s:J

.field public final t:J

.field public final u:Ljava/lang/String;

.field public final v:Ljava/lang/String;

.field public final w:I

.field public final x:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lv2/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lv2/h;-><init>(I)V

    sput-object v0, Lx2/e;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lx2/e;->b:I

    iput p2, p0, Lx2/e;->q:I

    iput p3, p0, Lx2/e;->r:I

    iput-wide p4, p0, Lx2/e;->s:J

    iput-wide p6, p0, Lx2/e;->t:J

    iput-object p8, p0, Lx2/e;->u:Ljava/lang/String;

    iput-object p9, p0, Lx2/e;->v:Ljava/lang/String;

    iput p10, p0, Lx2/e;->w:I

    iput p11, p0, Lx2/e;->x:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 p2, 0x4f45

    invoke-static {p1, p2}, LE2/g;->O(Landroid/os/Parcel;I)I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-static {p1, v0, v1}, LE2/g;->R(Landroid/os/Parcel;II)V

    iget v0, p0, Lx2/e;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x2

    invoke-static {p1, v0, v1}, LE2/g;->R(Landroid/os/Parcel;II)V

    iget v0, p0, Lx2/e;->q:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x3

    invoke-static {p1, v0, v1}, LE2/g;->R(Landroid/os/Parcel;II)V

    iget v0, p0, Lx2/e;->r:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v0, 0x8

    invoke-static {p1, v1, v0}, LE2/g;->R(Landroid/os/Parcel;II)V

    iget-wide v2, p0, Lx2/e;->s:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v2, 0x5

    invoke-static {p1, v2, v0}, LE2/g;->R(Landroid/os/Parcel;II)V

    iget-wide v2, p0, Lx2/e;->t:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v2, 0x6

    iget-object v3, p0, Lx2/e;->u:Ljava/lang/String;

    invoke-static {p1, v2, v3}, LE2/g;->M(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v2, 0x7

    iget-object v3, p0, Lx2/e;->v:Ljava/lang/String;

    invoke-static {p1, v2, v3}, LE2/g;->M(Landroid/os/Parcel;ILjava/lang/String;)V

    invoke-static {p1, v0, v1}, LE2/g;->R(Landroid/os/Parcel;II)V

    iget v0, p0, Lx2/e;->w:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v0, 0x9

    invoke-static {p1, v0, v1}, LE2/g;->R(Landroid/os/Parcel;II)V

    iget v0, p0, Lx2/e;->x:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p1, p2}, LE2/g;->Q(Landroid/os/Parcel;I)V

    return-void
.end method
