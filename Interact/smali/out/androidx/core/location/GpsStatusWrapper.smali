.class Landroidx/core/location/GpsStatusWrapper;
.super Landroidx/core/location/GnssStatusCompat;
.source "GpsStatusWrapper.java"


# static fields
.field private static final BEIDOU_PRN_COUNT:I = 0x23

.field private static final BEIDOU_PRN_OFFSET:I = 0xc8

.field private static final GLONASS_PRN_COUNT:I = 0x18

.field private static final GLONASS_PRN_OFFSET:I = 0x40

.field private static final GPS_PRN_COUNT:I = 0x20

.field private static final GPS_PRN_OFFSET:I = 0x0

.field private static final QZSS_SVID_MAX:I = 0xc8

.field private static final QZSS_SVID_MIN:I = 0xc1

.field private static final SBAS_PRN_MAX:I = 0x40

.field private static final SBAS_PRN_MIN:I = 0x21

.field private static final SBAS_PRN_OFFSET:I = -0x57


# instance fields
.field private mCachedIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedIteratorPosition:I

.field private mCachedSatellite:Landroid/location/GpsSatellite;

.field private mCachedSatelliteCount:I

.field private final mWrapped:Landroid/location/GpsStatus;


# direct methods
.method constructor <init>(Landroid/location/GpsStatus;)V
    .registers 4
    .param p1, "gpsStatus"    # Landroid/location/GpsStatus;

    .line 60
    invoke-direct {p0}, Landroidx/core/location/GnssStatusCompat;-><init>()V

    .line 61
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsStatus;

    iput-object v0, p0, Landroidx/core/location/GpsStatusWrapper;->mWrapped:Landroid/location/GpsStatus;

    .line 62
    const/4 v1, -0x1

    iput v1, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedSatelliteCount:I

    .line 63
    invoke-virtual {v0}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedIterator:Ljava/util/Iterator;

    .line 64
    iput v1, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedIteratorPosition:I

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedSatellite:Landroid/location/GpsSatellite;

    .line 66
    return-void
.end method

.method private static getConstellationFromPrn(I)I
    .registers 3
    .param p0, "prn"    # I

    .line 189
    if-lez p0, :cond_8

    const/16 v0, 0x20

    if-gt p0, v0, :cond_8

    .line 190
    const/4 v0, 0x1

    return v0

    .line 191
    :cond_8
    const/16 v0, 0x21

    const/16 v1, 0x40

    if-lt p0, v0, :cond_12

    if-gt p0, v1, :cond_12

    .line 192
    const/4 v0, 0x2

    return v0

    .line 193
    :cond_12
    if-le p0, v1, :cond_1a

    const/16 v0, 0x58

    if-gt p0, v0, :cond_1a

    .line 194
    const/4 v0, 0x3

    return v0

    .line 195
    :cond_1a
    const/16 v0, 0xc8

    if-le p0, v0, :cond_24

    const/16 v1, 0xeb

    if-gt p0, v1, :cond_24

    .line 196
    const/4 v0, 0x5

    return v0

    .line 197
    :cond_24
    const/16 v1, 0xc1

    if-lt p0, v1, :cond_2c

    if-gt p0, v0, :cond_2c

    .line 198
    const/4 v0, 0x4

    return v0

    .line 200
    :cond_2c
    const/4 v0, 0x0

    return v0
.end method

.method private getSatellite(I)Landroid/location/GpsSatellite;
    .registers 4
    .param p1, "satelliteIndex"    # I

    .line 152
    iget-object v0, p0, Landroidx/core/location/GpsStatusWrapper;->mWrapped:Landroid/location/GpsStatus;

    monitor-enter v0

    .line 153
    :try_start_3
    iget v1, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedIteratorPosition:I

    if-ge p1, v1, :cond_16

    .line 154
    iget-object v1, p0, Landroidx/core/location/GpsStatusWrapper;->mWrapped:Landroid/location/GpsStatus;

    invoke-virtual {v1}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedIterator:Ljava/util/Iterator;

    .line 155
    const/4 v1, -0x1

    iput v1, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedIteratorPosition:I

    .line 157
    :cond_16
    :goto_16
    iget v1, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedIteratorPosition:I

    if-ge v1, p1, :cond_35

    .line 158
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedIteratorPosition:I

    .line 159
    iget-object v1, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 160
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedSatellite:Landroid/location/GpsSatellite;

    .line 161
    goto :goto_35

    .line 163
    :cond_2a
    iget-object v1, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/GpsSatellite;

    iput-object v1, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedSatellite:Landroid/location/GpsSatellite;

    goto :goto_16

    .line 166
    :cond_35
    :goto_35
    iget-object v1, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedSatellite:Landroid/location/GpsSatellite;

    .line 167
    .local v1, "satellite":Landroid/location/GpsSatellite;
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_3f

    .line 168
    invoke-static {v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    return-object v0

    .line 167
    .end local v1    # "satellite":Landroid/location/GpsSatellite;
    :catchall_3f
    move-exception v1

    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v1
.end method

.method private static getSvidFromPrn(I)I
    .registers 2
    .param p0, "prn"    # I

    .line 205
    invoke-static {p0}, Landroidx/core/location/GpsStatusWrapper;->getConstellationFromPrn(I)I

    move-result v0

    packed-switch v0, :pswitch_data_12

    :pswitch_7
    goto :goto_11

    .line 213
    :pswitch_8
    add-int/lit16 p0, p0, -0xc8

    goto :goto_11

    .line 210
    :pswitch_b
    add-int/lit8 p0, p0, -0x40

    .line 211
    goto :goto_11

    .line 207
    :pswitch_e
    add-int/lit8 p0, p0, 0x57

    .line 208
    nop

    .line 216
    :goto_11
    return p0

    :pswitch_data_12
    .packed-switch 0x2
        :pswitch_e
        :pswitch_b
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 173
    if-ne p0, p1, :cond_4

    .line 174
    const/4 v0, 0x1

    return v0

    .line 176
    :cond_4
    instance-of v0, p1, Landroidx/core/location/GpsStatusWrapper;

    if-nez v0, :cond_a

    .line 177
    const/4 v0, 0x0

    return v0

    .line 179
    :cond_a
    move-object v0, p1

    check-cast v0, Landroidx/core/location/GpsStatusWrapper;

    .line 180
    .local v0, "that":Landroidx/core/location/GpsStatusWrapper;
    iget-object v1, p0, Landroidx/core/location/GpsStatusWrapper;->mWrapped:Landroid/location/GpsStatus;

    iget-object v2, v0, Landroidx/core/location/GpsStatusWrapper;->mWrapped:Landroid/location/GpsStatus;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getAzimuthDegrees(I)F
    .registers 3
    .param p1, "satelliteIndex"    # I

    .line 112
    invoke-direct {p0, p1}, Landroidx/core/location/GpsStatusWrapper;->getSatellite(I)Landroid/location/GpsSatellite;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->getAzimuth()F

    move-result v0

    return v0
.end method

.method public getBasebandCn0DbHz(I)F
    .registers 3
    .param p1, "satelliteIndex"    # I

    .line 147
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCarrierFrequencyHz(I)F
    .registers 3
    .param p1, "satelliteIndex"    # I

    .line 137
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCn0DbHz(I)F
    .registers 3
    .param p1, "satelliteIndex"    # I

    .line 102
    invoke-direct {p0, p1}, Landroidx/core/location/GpsStatusWrapper;->getSatellite(I)Landroid/location/GpsSatellite;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v0

    return v0
.end method

.method public getConstellationType(I)I
    .registers 3
    .param p1, "satelliteIndex"    # I

    .line 84
    nop

    .line 87
    invoke-direct {p0, p1}, Landroidx/core/location/GpsStatusWrapper;->getSatellite(I)Landroid/location/GpsSatellite;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v0

    invoke-static {v0}, Landroidx/core/location/GpsStatusWrapper;->getConstellationFromPrn(I)I

    move-result v0

    return v0
.end method

.method public getElevationDegrees(I)F
    .registers 3
    .param p1, "satelliteIndex"    # I

    .line 107
    invoke-direct {p0, p1}, Landroidx/core/location/GpsStatusWrapper;->getSatellite(I)Landroid/location/GpsSatellite;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->getElevation()F

    move-result v0

    return v0
.end method

.method public getSatelliteCount()I
    .registers 5

    .line 70
    iget-object v0, p0, Landroidx/core/location/GpsStatusWrapper;->mWrapped:Landroid/location/GpsStatus;

    monitor-enter v0

    .line 71
    :try_start_3
    iget v1, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedSatelliteCount:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2b

    .line 72
    iget-object v1, p0, Landroidx/core/location/GpsStatusWrapper;->mWrapped:Landroid/location/GpsStatus;

    invoke-virtual {v1}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/GpsSatellite;

    .line 73
    .local v2, "ignored":Landroid/location/GpsSatellite;
    iget v3, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedSatelliteCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedSatelliteCount:I

    .line 74
    .end local v2    # "ignored":Landroid/location/GpsSatellite;
    goto :goto_12

    .line 75
    :cond_25
    iget v1, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedSatelliteCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedSatelliteCount:I

    .line 78
    :cond_2b
    iget v1, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedSatelliteCount:I

    monitor-exit v0

    return v1

    .line 79
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public getSvid(I)I
    .registers 3
    .param p1, "satelliteIndex"    # I

    .line 93
    nop

    .line 96
    invoke-direct {p0, p1}, Landroidx/core/location/GpsStatusWrapper;->getSatellite(I)Landroid/location/GpsSatellite;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v0

    invoke-static {v0}, Landroidx/core/location/GpsStatusWrapper;->getSvidFromPrn(I)I

    move-result v0

    return v0
.end method

.method public hasAlmanacData(I)Z
    .registers 3
    .param p1, "satelliteIndex"    # I

    .line 122
    invoke-direct {p0, p1}, Landroidx/core/location/GpsStatusWrapper;->getSatellite(I)Landroid/location/GpsSatellite;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->hasAlmanac()Z

    move-result v0

    return v0
.end method

.method public hasBasebandCn0DbHz(I)Z
    .registers 3
    .param p1, "satelliteIndex"    # I

    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public hasCarrierFrequencyHz(I)Z
    .registers 3
    .param p1, "satelliteIndex"    # I

    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public hasEphemerisData(I)Z
    .registers 3
    .param p1, "satelliteIndex"    # I

    .line 117
    invoke-direct {p0, p1}, Landroidx/core/location/GpsStatusWrapper;->getSatellite(I)Landroid/location/GpsSatellite;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->hasEphemeris()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 185
    iget-object v0, p0, Landroidx/core/location/GpsStatusWrapper;->mWrapped:Landroid/location/GpsStatus;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public usedInFix(I)Z
    .registers 3
    .param p1, "satelliteIndex"    # I

    .line 127
    invoke-direct {p0, p1}, Landroidx/core/location/GpsStatusWrapper;->getSatellite(I)Landroid/location/GpsSatellite;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v0

    return v0
.end method
